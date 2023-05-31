class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @booking = Booking.new
    @property = Property.find(params[:property_id])
  end

  def create
    @property = Property.find(params[:property_id])

    # start_date = Date.parse(booking_params[:start_date])
    # end_date = Date.parse(booking_params[:end_date])
    # days = (end_date - start_date).to_i + 1

    @booking = current_user.bookings.build(booking_params)
    days = (@booking.end_date - @booking.start_date).to_i
    @booking.property = @property
    @booking.total_price = @property.price_per_night * days
    @booking.status = "confirmed"

    if @booking.save
      redirect_to property_path(@property), notice: "Booked Successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests)
  end
end
