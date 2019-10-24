class FireSerializer
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitude
end
