class CreateCampaignSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :campaign_supplies do |t|
      t.references :supply, null: false, foreign_key: true, index: true
      t.references :campaign, null: false, foreign_key: true, index: true
      t.integer :quantity_needed
      t.integer :quantity_supplied

      t.timestamps
    end
  end
end
