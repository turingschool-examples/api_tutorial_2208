class Api::V1::StoresController < ApplicationController
    def index
      render json: StoreSerializer.new(Store.all)
    end
  
    def show
      render json: StoreSerializer.new(Store.find(params[:id]))
    end
  end