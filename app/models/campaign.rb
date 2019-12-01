class Campaign < ApplicationRecord
    belongs_to :corporation
    has_many :campaign_supplies
    has_many :supplies, through: :campaign_supplies
end
