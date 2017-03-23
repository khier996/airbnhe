class BookingsController < ApplicationController
  def update
    booking = Booking.find(params[:id])
    action = params[:booking][:action]

    if action == "confirm"
      booking.status = "confirmed"
      booking.save

      redirect_to dashboard_path
    elsif action == "cancel"
      booking.status = "Rejected"
      booking.save

      redirect_to dashboard_path
    end
  end
end
