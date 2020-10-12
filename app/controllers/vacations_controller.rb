class VacationsController < ApplicationController

def index 
    @vacations = Vacation.all 
end 

def show 
    set_vacation
end 

def new 
    @vacations = Vacation.new 
end 

def create 
    @vacations = Vacation.create(vacation_params)
    redirect_to vacation_path(vacation)
end 

def edit 
    set_vacation
end 

def update 
    set_vacation
    vacations.update(vacation_params)
    redirect_to vacation_path(vacation)
end

private 

def set_vacation 
    @vacations = Vacation.find_by(id: params[:id])
end 

def vacation_params 
    params.require(:vacation).permit(:country, :state, :city, :description, :enjoyment_rating, :duration, :solo_traveler)
end 

end
