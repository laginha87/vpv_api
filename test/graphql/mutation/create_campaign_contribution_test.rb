require "test_helper"

class Mutations::CreateCampaignContributionTest < ActiveSupport::TestCase
  def perform(**args)
    Mutations::CreateCampaignContribution.new(object: nil, context: {}, field: nil).resolve(args)
  end

  test "adds supplies to a campaign" do
    res = perform(
      user_id: 1,
      campaign_id: 1,
      contribution_supplies: [
        {quantity: 20, campaign_supply_id: 2},
        {quantity: 10, campaign_supply_id: 1},
      ],
    )

    campaign = res[:campaign_contribution].campaign

    assert campaign.id == 1
    assert_equal [10, 20], campaign.campaign_supplies.map { |e| e.quantity_supplied }.sort
    assert_equal 50, campaign.completion
  end
end
