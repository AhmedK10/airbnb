class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @properties = Property.all
    @properties = @properties.where("address ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    return unless params[:max_price].present?

    max_price = params[:max_price]

    if max_price == "More than 400"
      @properties = @properties.where("price_per_night > ?", 400)
    else
      max_price = max_price.to_i
      @properties = @properties.where(price_per_night: 0..max_price)
    end
  end

  def show
    @property = Property.find(params[:id])
  end
end
