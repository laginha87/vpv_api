module Mutations
    class CreateCampaignContribution < Mutations::BaseMutation
        argument :user_id, ID, required: true
        argument :campaign_id, ID, required: true
        argument :contribution_supplies, [Types::CampaignContributionSupplyInputType], required: true

        field :campaign, Types::CampaignType, null: false


        def resolve(
            user_id:,
            campaign_id:,
            contribution_supplies:)
            CampaignSupply.transaction do
                CampaignContribution.create!(
                    user_id: user_id,
                    campaign_id: campaign_id,
                    campaign_contribution_supplies: contribution_supplies.map do |e|
                        CampaignContributionSupply.new(quantity: e[:quantity], campaign_supply_id: e[:campaign_supply_id])
                    end
                )

                contribution_supplies.each do |cs|
                    campaign_supply = CampaignSupply.find(cs[:campaign_supply_id])
                    campaign_supply.quantity_supplied += cs[:quantity]
                    campaign_supply.save!
                end
            end
            campaign = Campaign.find(campaign_id)

            { campaign: campaign }
        end
    end

end