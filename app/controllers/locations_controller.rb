class LocationsController < ApplicationController

    def create 
        if country = country blah blah
        else 
            @location = Location.create(location_params)
        redirect_to location_path(location)
        end 
    end 

end
