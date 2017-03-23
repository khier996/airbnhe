class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @current = current_user
  end


end
