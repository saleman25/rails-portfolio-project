class VisitsController < ApplicationController

def index 
   get_vacation  
end 

def have_been 
    @visit = Visit.has_been
    render 'index'
end 

def have_not_been
    @visit = Visit.has_not_been 
    render 'index'
end

def new 
    get_vacation
    redirect_to vacations_path if !@vacation
    @visit = Visit.new 
end 

def create 
    @vacation = Vacation.find_by(id: params[:visit][:vacation_id])
    @visit = Visit.new(visit_params)
    byebug
    if @visit.save
        redirect_to vacation_visits_path(@visit.vacation)
    else 
        render 'new'
end 
end

private 

def get_vacation 
    @vacation ||= Vacation.find_by(id: params[:vacation_id])
end 


def visit_params 
    params.require(:visit).permit(:user_id, :vacation_id, :have_you_visited_before)
end 

end
