class CreateFires < ActiveRecord::Migration[6.0]
  def change
    create_table :fires do |t|
      t.numeric :latitude
      t.numeric :longitude

      t.timestamps
    end
  end
end
