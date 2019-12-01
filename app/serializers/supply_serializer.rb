class SupplySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :icon
end
