class VacationsController < ApplicationController

def index 
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
    redirect_to vacation_path(vacation)
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
    params.require(:vacation).permit(:country, :state, :city, :description, :enjoyment_rating, :duration, :solo_traveler)
end 

end
