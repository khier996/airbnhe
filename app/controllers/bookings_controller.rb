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
  end
end
