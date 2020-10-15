class VisitsController < ApplicationController

def new 
get_vacation
end 

def index 
   get_vacation 
   @visit = Visit.new 

end 

def create 
    @visit = Visit.new 
    set_visited 

end 

private 

def get_vacation 
    @vacation = Vacation.find_by(id: params[:vacation_id])
end 

def set_visited
    if params[:have_you_visited_before] == "yes"
        @visit.have_you_visited_before = true 
        redirect_to 
    else 
        @visit.have_you_visited_before = false 
        redirect_to 
    end 
end 


end
