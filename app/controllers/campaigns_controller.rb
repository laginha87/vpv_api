class CampaignsController < ApplicationController
  def index
    included = params[:include].split(",").map(&:underscore)
    render json: CampaignSerializer.new(Campaign.includes(*included.map(&:to_sym)).all, include: included)
  end

  def show
    included = params[:include].split(",").map(&:underscore)
    render json: CampaignSerializer.new(Campaign.includes(*included.map(&:to_sym)).find(params[:id]), include: included)
  end
end
