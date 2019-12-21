module Types
  class SupplyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :icon, String, null: false
  end
end
