class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @properties = Property.all

    if params[:query]
      @properties = @properties.where(address: params[:query])
    end
  end

  def show
    @property = Property.find(params[:id])
  end
end
