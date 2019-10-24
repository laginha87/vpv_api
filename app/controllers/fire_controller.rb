class FireController < ApplicationController
  def index
    render json: FireSerializer.new(Fire.all)
  end
end
