module Types
  class CampaignSupplyType < Types::BaseObject
    field :quantity_needed, Integer, null: true
    field :quantity_supplied, Integer, null: true
    field :supply, Types::SupplyType, null: true
    field :campaign, Types::CampaignType, null: true
  end
end
