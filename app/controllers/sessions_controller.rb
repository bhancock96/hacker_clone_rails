class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    user.authenticate(params[:password])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(session[:user_id])
    else
      render "users/new"
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
