class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect_to user_path(session[:user_id])
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
