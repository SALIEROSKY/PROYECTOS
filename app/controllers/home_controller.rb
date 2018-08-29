class HomeController < ApplicationController
  def index
  		render json:{status: 'SUCCESS', message: 'Loaded articles successfully'}, 
    status: :ok
  end
end
