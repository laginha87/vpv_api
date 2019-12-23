module Mutations
  class CreateCampaignContribution < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :campaign_id, ID, required: true
    argument :contribution_supplies, [Types::CampaignContributionSupplyInputType], required: true

    field :campaign_contribution, Types::CampaignContributionType, null: false

    def resolve(
      user_id:,
      campaign_id:,
      contribution_supplies:
    )
      contribution_supplies = contribution_supplies.filter{ |e| e[:quantity] > 0 }

      campaign_contribution = CampaignContribution.new(
        user_id: user_id,
        campaign_id: campaign_id,
        campaign_contribution_supplies: contribution_supplies.map do |e|
                                          CampaignContributionSupply.new(quantity: e[:quantity], campaign_supply_id: e[:campaign_supply_id])
                                        end
      )

      CampaignContribution.transaction do
        campaign_contribution.save!
        contribution_supplies.each do |cs|
          campaign_supply = CampaignSupply.find(cs[:campaign_supply_id])
          campaign_supply.quantity_supplied += cs[:quantity]
          campaign_supply.save!
        end
        campaign_contribution.campaign.set_completion!
      end

      {campaign_contribution: campaign_contribution}
    end
  end
end
