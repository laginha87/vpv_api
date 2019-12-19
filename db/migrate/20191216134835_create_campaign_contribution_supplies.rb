class CreateCampaignContributionSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_contribution_supplies do |t|
      t.references :campaign_supply, null: false, foreign_key: true
      t.references :campaign_contribution, null: false, foreign_key: true, index: {name: "index_camp_cont_supl_camp_contr"}
      t.integer :quantity

      t.timestamps
    end
  end
end
