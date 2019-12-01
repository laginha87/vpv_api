class CorporationSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower

  attributes :latitude, :longitude, :name
end
