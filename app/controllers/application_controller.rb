class ApplicationController < ActionController::API
  def index
    redirect_to :api_animals
  end
end
