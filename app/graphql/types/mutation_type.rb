module Types
  class MutationType < Types::BaseObject
    field :create_campaign_contribution, mutation: Mutations::CreateCampaignContribution
  end
end
