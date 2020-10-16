class VacationsController < ApplicationController
    


def index 
    @user = current_user 
    @vacation = @user.vacations
end 

def show 
    set_vacation
end 

def new 
    @vacation = Vacation.new 
end 

def create 
    @vacation = Vacation.new(vacation_params)
    set_solo_traveler
    set_country
    if @vacation.save
        redirect_to vacation_path(@vacation)
    else 
        render 'new'
end 
end

def edit 
    set_vacation
end 

def update 
    set_vacation
    @vacation.update(vacation_params)
    redirect_to vacations_path
end

def destroy 
    set_vacation 
    @vacation.destroy 
    redirect_to vacations_path 
end 


private 

def set_vacation 
    @vacation = Vacation.find_by(id: params[:id])
end 

def set_solo_traveler
    if params[:solo_traveler] == "yes"
        @vacation.solo_traveler = true 
    else 
        @vacation.solo_traveler = false 
    end 
end

def set_country
    @vacation.country = params[:country]
end 

def vacation_params 
    params.require(:vacation).permit(:country, :city, :description, :enjoyment_rating, :duration)
end 

end
