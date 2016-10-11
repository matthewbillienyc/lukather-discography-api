module Api::V1
  class YearsController < ApplicationController
    def index
      render json: Year.all
    end
    
    def show
      render json: Year.find(params[:id])
    end
  end
end
