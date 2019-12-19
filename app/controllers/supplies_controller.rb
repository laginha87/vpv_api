class SuppliesController < ApplicationController
  def index
    render json: SupplySerializer.new(Supply.all)
  end
end
