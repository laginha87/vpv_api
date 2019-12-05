class CampaignSupplySerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower

  attributes :quantity_needed, :quantity_supplied

  has_one :supply
  has_one :campaign
end
