class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    if params[:user][:password] == params[:user][:password_confirmation]
      @user.password = params[:user][:password]
      @user.save
      session[:user_id] = @user.id
      redirect_to homepage_path
    else
      redirect_to new_user_path
    end
  end

  def homepage
    @user = User.find(session[:user_id])
  end

end
