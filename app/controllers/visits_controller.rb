class VisitsController < ApplicationController

def new 
get_vacation
end 

def index 
   get_vacation 
   @visit = Visit.new 

end 

def create 

end 

private 

def get_vacation 
    @vacation = Vacation.find_by(id: params[:vacation_id])
end 



end
