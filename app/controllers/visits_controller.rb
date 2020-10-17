class VisitsController < ApplicationController

def index 
   get_vacation  
end 

def have_been 
    get_vacation
    @visit = Visit.vacation.has_been
    render 'index'
end 

def have_not_been
    get_vacation
    @visit = Visit.vacation.has_not_been 
    render 'index'
end

def new 
    get_vacation
    redirect_to vacations_path if !@vacation
    @visit = Visit.new 
end 

def create 
    @vacation = Vacation.find_by(id: params[:visit][:vacation_id])
    @visit = Visit.new
    set_have_you_visited
    set_user
    set_vacation
    if @visit.save
        redirect_to vacation_visit_path(@vacation, @visit)
    else 
        render 'new'
end 
end

private 

def get_vacation 
    @vacation ||= Vacation.find_by(id: params[:vacation_id])
end 


def set_have_you_visited
    if params[:visit][:have_you_visited_before] == "yes"
        @visit.have_you_visited_before = true 
    else 
        @visit.have_you_visited_before = false 
end 
end

def set_user 
    @visit.user_id = current_user.id
end 

def set_vacation
    @visit.vacation_id = @vacation.id
end

end
