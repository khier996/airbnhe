class MenController < ApplicationController

  def index
    @men = Man.all
    if params[:search]
      @men = @men.where("name LIKE ?", "%#{params[:search]}%").order("created_at DESC")
    end

    # if params[:city]
    #   @men = @men.where("city LIKE ?", "%#{params[:city]}")
    # end

    # if params[:height]
    #   @men = @men.where("height LIKE ?", "%#{params[:height]}")
    # end

    # if params[:price]
    #   @men = @men.where("price LIKE ?", "%#{params[:price]}")
    # end


    if params[:services]
      @men = @men.select { |man| man.services.include?(params[:services]) }
    end

    if params[:services] == "Services"
      @men = Man.all
    end
  end

  def new
    @man = Man.new
  end

  def create
    @man = Man.new(men_params)
    @man.save

    redirect_to man_path(@man)

  end

  def destroy
    man = Man.find(params[:id])
    man.destroy

    redirect_to men_path(Man.all)
  end


  private

  def men_params
    params.require(:man).permit(:name, :height, :weight, :birthdate, :description, :price, services: [], photos: [])
  end

end
