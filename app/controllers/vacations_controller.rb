class VacationsController < ApplicationController
    


def index 
    @user = current_user
    @vacation = Vacation.all 
end 

def show 
    set_vacation
end 

def new 
    @vacation = Vacation.new 
end 

def create 
    @vacation = Vacation.create(vacation_params)
    if params[:solo_traveler] == "yes"
        @vacation.solo_traveler = true 
    else 
        @vacation.solo_traveler = false 
    end 
    if @vacation.save
        redirect_to vacations_path(vacation)
    else 
        redirect_to new_vacation_path
end 
end

def edit 
    set_vacation
end 

def update 
    set_vacation
    vacation.update(vacation_params)
    redirect_to vacation_path(vacation)
end

private 

def set_vacation 
    @vacation = Vacation.find_by(id: params[:id])
end 

def vacation_params 
    params.require(:vacation).permit(:country, :state, :city, :description, :enjoyment_rating, :duration)
end 

end
