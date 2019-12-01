class CampaignsController < ApplicationController
    def index
      render json: CampaignSerializer.new(Campaign.includes(:corporation, :campaign_supplies, :supplies).all)
    end
  end
