class CampaignContribution < ApplicationRecord
  belongs_to :user
  belongs_to :campaign
  has_many :campaign_contribution_supplies

  accepts_nested_attributes_for :campaign_contribution_supplies
end
