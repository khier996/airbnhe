class MenController < ApplicationController
  def new
    @man = Man.new
  end

  def create
    @man = Man.new(men_params)
    @man.save

    redirect_to man_path(@man)
  end

  def men_params
    params.require(:man).permit(:name, :height, :weight, :birthdate, :description, :price, services: [], photos: [])
  end

end
