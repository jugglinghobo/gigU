class UsersController < ApplicationController

  def show
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes params[:user]
  end
end
