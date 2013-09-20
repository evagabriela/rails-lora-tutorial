class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to user_path(@user.id)
  end

  def show
    redirect_to users_path
  end
end
