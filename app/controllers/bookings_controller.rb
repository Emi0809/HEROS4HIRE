class BookingsController < ApplicationController
  before_action :set_superhero, only: [:new, :create]
  before_action :set_booking, only: [:destroy]

  def index
    @bookings = Booking.where(user: current_user)
    @superheros = Superhero.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.superhero = @superhero
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "superheros/show", status: :unprocessable_entity
    end
  end

  def destroy
    if @booking.destroy
     redirect_to bookings_path, status: :see_other
    else
      render "bookings/index"
    end
  end

  private

  def set_superhero
    @superhero = Superhero.find(params[:superhero_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
