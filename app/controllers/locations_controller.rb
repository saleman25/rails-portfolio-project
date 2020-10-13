class LocationsController < ApplicationController

    def index 
        @location = Location.all 
    end 

    def new 

    end 
    
    
    
    def create 
        if country = country blah blah
        else 
            @location = Location.create(location_params)
        redirect_to location_path(location)
        end 
    end 

    private 

    def location_params 
        params.require(:location).permit(:user_id, :vacation_id)

end
