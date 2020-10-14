class VisitsController < ApplicationController

def new 

end 

def index 
    @vacation = Vacation.find_by(id: params[:vacation_id])
    
end 

def create 

end 






end
