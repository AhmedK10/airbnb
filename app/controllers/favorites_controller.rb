class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.where(user: current_user)
  end

  def create
    @favorite.new
    @favorite.property = @property
    if @favorite.save
      redirect_to property_path(@property)
    end
  end
end
