class VisitsController < ApplicationController

def index 
   get_vacation 
  if @visit = Visit.has_been
    redirect_to '/vacation/vacation id / have been vistit'
  else 
    @visit = Visit.has_not_been
    redirect_to '/vacation/vacation id / have not been vistit'
  end 
end 

def new 
    get_vacation
end 

def create 
    get_vacation 
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
        redirect_to '/vacation/vacation id / have been vistit'
    else 
        @visit.have_you_visited_before = false 
        redirect_to '/vacation/vacation id / have not been vistit'
    end 
end 


end
