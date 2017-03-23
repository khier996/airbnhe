class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    shuffle = Man.all.shuffle
    @suggestions = shuffle[0..5]
    @men_coordinates = @suggestions.map { |man| {lat: man.latitude, lng: man.longitude} }
  end

  def dashboard
    @current_choice = params[:bookings] || "all"
    if params[:bookings] == "confirmed"
      @bookings = current_user.bookings.where(status: "confirmed")

    elsif params[:bookings] == "pending"
      @bookings = current_user.bookings.where(status: "pending")

    elsif params[:bookings] == "rejected"
      @bookings = current_user.bookings.where(status: "rejected")

    else
      @bookings = current_user.bookings
    end

    @bookings = current_user.bookings
    @requests = current_user.requests
    @current_user = current_user
  end

  def about

  end

end
