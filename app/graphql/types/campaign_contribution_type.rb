module Types
  class CampaignContributionType < Types::BaseObject
    field :created_at, Types::DateTimeType, null: false
    field :updated_at, Types::DateTimeType, null: false
    field :user, Types::UserType, null: false
    field :campaign, Types::CampaignType, null: false
    field :campaign_contribution_supplies, [Types::CampaignContributionSupplyType], null: false
    field :id, ID, null: false
  end
end
