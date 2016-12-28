module Api::V1
  class YearsController < ApplicationController
    def index
      render json: Year.all, each_serializer: YearsSerializer
    end
    
    def show
      render json: Year.find(params[:id]), serializer: YearSerializer
    end
  end
end
