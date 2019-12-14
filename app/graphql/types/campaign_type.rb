module Types
  class CampaignType < Types::BaseObject
    field :corporation, Types::CorporationType, null: true
    field :completion, Integer, null: true
    field :end_datetime, GraphQL::Types::ISO8601DateTime, null: true
    field :id, ID, null: false
    field :campaign_supplies, [Types::CampaignSupplyType], null: true
  end
end
