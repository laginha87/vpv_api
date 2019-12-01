class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.datetime :end_datetime
      t.integer :completion
      t.references :corporation, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
