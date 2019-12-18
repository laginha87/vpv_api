module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :fires, [Types::FireType], null: false,
      description: "An example field added by the generator"

    field :campaigns, [Types::CampaignType], null: false,
      description: "An example field added by the generator"

    field :campaign, Types::CampaignType, null: false,
      description: "An example field added by the generator" do
      argument :id, ID, required: true
    end

    field :campaign_contribution, Types::CampaignContributionType, null: false,
      description: "An example field added by the generator" do
      argument :id, ID, required: true
    end

    def fires
      Fire.all
    end

    def campaigns
      Campaign.all
    end

    def campaign(id:)
      Campaign.preload(:corporation, :campaign_supplies).find(id)
    end

    def campaign_contribution(id:)
      CampaignContribution.preload(:user, :campaign, campaign: [:corporation], campaign_contribution_supplies: [campaign_supply: [:supply]]).find(id)
    end
  end
end
