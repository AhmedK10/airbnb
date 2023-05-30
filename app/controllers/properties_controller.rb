class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end
end
