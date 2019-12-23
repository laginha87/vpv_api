module Types
  class CampaignType < Types::BaseObject
    field :corporation, Types::CorporationType, null: false
    field :completion, Integer, null: false
    field :end_datetime, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :campaign_supplies, [Types::CampaignSupplyType], null: false
    field :number_of_volunteers, Integer, null: false
  end
end
