class CampaignsController < ApplicationController
  def index
    includes = %i[corporation campaign_supplies supplies]
    render json: CampaignSerializer.new(Campaign.includes(*includes).all, include: includes.map(&:to_s))
  end
end
