class Campaign < ApplicationRecord
  belongs_to :corporation
  has_many :campaign_supplies
  has_many :campaign_contributions
  has_many :supplies, through: :campaign_supplies

  def set_completion!
    completion = campaign_supplies.reduce([0.0, 0.0]) { |(supplied, needed), rec|
      [supplied + rec.quantity_supplied, needed + rec.quantity_needed]
    }.reduce(&:/) * 100
    update_attribute(:completion, completion)
  end

  def number_of_volunteers
    campaign_contributions.length
  end
end
