class CampaignContributionSupply < ApplicationRecord
  belongs_to :campaign_supply
  belongs_to :campaign_contribution
end
