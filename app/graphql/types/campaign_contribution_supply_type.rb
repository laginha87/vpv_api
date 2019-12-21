module Types
  class CampaignContributionSupplyType < Types::BaseObject
    field :quantity, Integer, null: false
    field :created_at, Types::DateTimeType, null: false
    field :updated_at, Types::DateTimeType, null: false
    field :campaign_supply, Types::CampaignSupplyType, null: false
    field :campaign_contribution, Types::CampaignContributionType, null: false
    field :id, ID, null: false
  end
end
