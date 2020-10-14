class SessionController < ApplicationController 
skip_before_action :verified_user, only: [:new, :create] 

def new
    @user = User.new
    
end 

def create 
  if request.env["omniauth.auth"]
    @user = User.find_by(github_uid: request.env["omniauth.auth"]["uid"])
    if @user.nil?
    User.create(username: request.env["omniauth.auth"]["info"]["nickname"], github_uid: request.env["omniauth.auth"]["uid"], password: "github")
    end
    log_in(@user)
    redirect_to vacations_path 
  else
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
        redirect_to vacations_path
    else
        @error = "Invalid login, please try again."
        render 'new'
    end 
end
end 

def destroy
    session.clear
    redirect_to root_path 
end 


end 