class CampaignSupplySerializer
  include FastJsonapi::ObjectSerializer
  attributes :quantity_needed, :quantity_supplied
end
