class BookingsController < ApplicationController

  def create
    @man  = Man.find(params[:man_id])
    @booking = Booking.new(booking_params)
    @booking.man_id = @man.id
    @booking.user_id = current_user.id
    @booking.status = "pending"
    if @booking.save
       flash[:notice] = "Your profile has been updated"
      redirect_to man_path(@man)
    else
      render "men/show"
    end

  end

  def update
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)

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
