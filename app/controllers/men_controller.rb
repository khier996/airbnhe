class MenController < ApplicationController
  def home
  end

  def show
     @man = Man.find(params[:id])

  end

  def new
  end
end
