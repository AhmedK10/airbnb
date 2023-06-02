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

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user

    if @property.save
      redirect_to property_path(@property)
    else 
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def property_params #strong params
    params.require(:property).permit(:title, :capacity, :address, :summary, :price_per_night, :number_of_rooms, :single_room, :photo)
  end
end
