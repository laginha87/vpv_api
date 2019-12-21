module Types
  class FireType < Types::BaseObject
    field :id, ID, null: false
    field :latitude, Float, null: false
    field :longitude, Float, null: false
  end
end
