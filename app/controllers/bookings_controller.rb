class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.validates = "pending"
    @booking.user_id = current_user.id
    @booking.castle_id = params[:castle_id]

    if @booking.save
      redirect_to castle_path(@booking.castle_id)
    else
      redirect_to castle_path(params[:castle_id])
    end
  end

 private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :total_price)
  end
end
