module Types
  class CampaignContributionType < Types::BaseObject
    field :created_at, Types::DateTimeType, null: true
    field :updated_at, Types::DateTimeType, null: true
    field :user, Types::UserType, null: true
    field :campaign, Types::CampaignType, null: true
    field :campaign_contribution_supplies, [Types::CampaignContributionSupplyType], null: true
    field :id, ID, null: true
  end
end
