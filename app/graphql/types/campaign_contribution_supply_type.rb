module Types
  class CampaignContributionSupplyType < Types::BaseObject
    field :quantity, Integer, null: true
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :campaign_supply, Types::CampaignSupplyType, null: true
    field :campaign_contribution, Types::CampaignContributionType, null: true
    field :id, ID, null: true
  end
end
