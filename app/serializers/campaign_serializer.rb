class CampaignSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower

  attributes :end_datetime, :completion

  attribute(:name) { |e| e.corporation.name }
  attribute(:latitude) { |e| e.corporation.latitude }
  attribute(:longitude) { |e| e.corporation.longitude }

  attribute(:campaign_supplies) do |e|
    e.campaign_supplies.map{|e|{ 'supplyName': e.supply.name, 'quantityNeeded': e.quantity_needed, 'quantitySupplied': e.quantity_supplied}}
  end
end
