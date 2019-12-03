class CampaignsController < ApplicationController
  def index
    included = params[:include].split(",").map(&:underscore)
    render json: CampaignSerializer.new(Campaign.includes(*included.map(&:to_sym)).all, include: included)
  end

  def show
    render json: CampaignSerializer.new(Campaign.find(params[:id]))
  end
end
