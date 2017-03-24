class UsersController < ApplicationController
  def show
    @current = current_user
  end

  def edit
    @current = current_user
  end
end
