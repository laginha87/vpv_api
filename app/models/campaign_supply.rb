class CampaignSupply < ApplicationRecord
  belongs_to :supply
  belongs_to :campaign
end
