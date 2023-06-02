class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @favorites = Favorite.where(user: current_user)
  end

  # def new
  #   @favorite = favorite.new
  #   @favorite = Property.find(params[:property_id])
  # end

  def create
    @favorite = favorite.new
    @property = Property.find(params[:property_id])
    @favorite.user = current_user
    @favorite.property = @property
    if @favorite.save
      redirect_to property_path(@property), notice: "Added to Wishlist Successfully!"
    else
      render 'new'
    end
  end
end
