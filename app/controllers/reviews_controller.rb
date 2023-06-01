class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end
  
  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.user = current_user
    @review.booking = @booking
    if @review.save
      redirect_to property_path(@booking.property)
    else
      render 'new' 
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
