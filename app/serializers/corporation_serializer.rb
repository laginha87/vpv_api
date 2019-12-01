class CorporationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitude, :name
end
