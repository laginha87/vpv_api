module Types
    class CampaignContributionSupplyInputType < Types::BaseInputObject
        argument :campaign_supply_id, ID, required: true
        argument :quantity, Integer, required: true
    end
end