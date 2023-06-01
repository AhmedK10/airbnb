class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @properties = Property.all

    if params[:query]
      @properties = @properties.where("address ILIKE ?", "%#{params[:query]}%")
    end

    if params[:min_price].present? && params[:max_price].present?
      min_price = params[:min_price].to_i
      max_price = params[:max_price].to_i
      @properties = @properties.where(price_per_night: min_price..max_price)
    end
  end

  def show
    @property = Property.find(params[:id])
  end
end
