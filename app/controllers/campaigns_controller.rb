class CampaignsController < ApplicationController
  def index
    render json: CampaignSerializer.new(Campaign.includes(:corporation, :campaign_supplies, :supplies).all)
  end

  def show
    render json: CampaignSerializer.new(Campaign.find(params[:id]))
  end
end
