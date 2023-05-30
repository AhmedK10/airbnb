class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @properties = Property.all
  end
end
