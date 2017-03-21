class MenController < ApplicationController
  def home
  end

  def show
     @man = Man.find(params[:id])
  end

  def new
    @man = Man.new
  end

  def create
    parameters = params.require(:man).permit(:name, :height, :weight, :description, :services, :price)
    birthdate = Time.new(params[:man]["birthdate(1i)"], params[:man]["birthdate(2i)"], params[:man]["birthdate(3i)"])
    services = params[:man][:services]
    services.shift
    @man = Man.new(parameters)
    @man.birthdate = birthdate
    @man.services = services
    @man.save

    redirect_to man_path(@man)
  end
end


