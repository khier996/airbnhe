class MenController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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


    if params[:services] && params[:services] != "Services"
      @men = @men.select { |man| man.services.include?(params[:services]) }
    end

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
