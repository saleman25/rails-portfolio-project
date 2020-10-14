class SessionController < ApplicationController 
skip_before_action :verified_user, only: [:new, :create] 

def new
    @user = User.new
    
end 

def create 
   
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
        redirect_to vacations_path
    else
        @error = "Invalid login, please try again."
        render 'new'
    end 
end 

def destroy
    session.clear
    redirect_to root_path 
end 


end 