class CampaignSerializer
    include FastJsonapi::ObjectSerializer
    set_key_transform :camel_lower

    attributes :end_datetime, :completion

    belongs_to :corporation
    has_many :supplies
    has_many :campaign_supplies
  end
