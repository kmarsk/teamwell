class Employees::BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @user = current_user
    @booking.user = @user
    @booking.save
    redirect_to  employees_activity_booking_path(@activity, @booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
      params.require(:booking).permit(:date, :time)
  end
end