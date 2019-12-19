module Types
  class CorporationType < Types::BaseObject
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :name, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: true
  end
end
