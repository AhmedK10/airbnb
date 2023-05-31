class BookingsController < ApplicationController
  before_action :set_booking, only: [:create, :update]
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.propety = @property
    if @booking.save
      redirect_to bookings_path, notice: "Booking was sucessfully created"
    else
      render :new
    end
  end

  def update
  end

  privete

  def booking_params
    requier.params(:booking).permit(:start_date, :end_date, :number_of_guests)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
