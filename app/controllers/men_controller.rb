class MenController < ApplicationController
  def index
    @men = Man.all
    if params[:search]
      @men = @men.where("name LIKE ?", "%#{params[:search]}%").order("created_at DESC")
    end

    if params[:city]
      @men = @men.where("city LIKE ?", "%#{params[:city]}")
    end

    if params[:height]
      @men = @men.where("height LIKE ?", "%#{params[:height]}")
    end

    if params[:price]
      @men = @men.where("price LIKE ?", "%#{params[:price]}")
    end

    if params[:services]
      @men = @men.select { |man| man.services.include?(params[:services]) }
    end

    if params[:services] == "Services"
      @men = Man.all
    end
  end
end
