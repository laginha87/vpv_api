class CampaignSerializer
    include FastJsonapi::ObjectSerializer
    attributes :end_datetime, :completion

    belongs_to :corporation
    has_many :supplies
    has_many :campaign_supplies
  end
