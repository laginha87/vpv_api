module Types
  class SupplyType < Types::BaseObject
    field :id, ID, null: true
    field :name, String, null: true
    field :description, String, null: true
    field :icon, String, null: true
  end
end
