module Types
  class CampaignSupplyType < Types::BaseObject
    field :id, ID, null: false
    field :quantity_needed, Integer, null: false
    field :quantity_supplied, Integer, null: false
    field :supply, Types::SupplyType, null: false
    field :campaign, Types::CampaignType, null: false
  end
end
