class MenController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
  end

  def show
    @man = Man.find(params[:id])
    @man_coordinates = [{ lat: @man.latitude, lng: @man.longitude }]
  end

  def index
    @men = Man.all
    @men_coordinates = @men.map { |man| {lat: man.latitude, lng: man.longitude} }

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
    @man = Man.new(men_params)
    @man.user_id = current_user[:id]

    if @man.save
      ManMailer.creation_confirmation(@man).deliver_now

      redirect_to man_path(@man)
    else
      render :new
    end

  end


  def destroy
    man = Man.find(params[:id])
    man.destroy

    redirect_to men_path(Man.all)
  end


  def edit
    @man = Man.find(params[:id])
  end

  def update
    @man = Man.find(params[:id])
    @man.update(men_params)
    redirect_to man_path(@man)
  end

 private

  def men_params
    params.require(:man).permit(:summary, :name, :height, :weight, :birthdate, :address, :description, :price, services: [], photos: [])
  end

end


