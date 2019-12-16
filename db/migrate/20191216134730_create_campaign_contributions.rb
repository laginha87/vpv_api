class CreateCampaignContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_contributions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
