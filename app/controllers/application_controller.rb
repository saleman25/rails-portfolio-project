class ApplicationController < ActionController::Base
    before_action :verified_user
    helper_method :current_user

def welcome
    render 'welcome'
end 

def verified_user 
    redirect_to welcome unless user_is_authenticated 
end 

def user_authenticated 
    !!current_user
end 

def current_user
    User.find_by(id: session[:user_id])
end 


end
