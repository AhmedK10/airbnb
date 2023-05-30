class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end
  
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:id, :comment, :rating)
  end
end
