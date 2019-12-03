class CampaignSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  has_one :corporation
  has_many :campaign_supplies
  attributes :end_datetime, :completion
end
