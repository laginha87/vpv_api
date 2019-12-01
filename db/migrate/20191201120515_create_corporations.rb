class CreateCorporations < ActiveRecord::Migration[6.0]
  def change
    create_table :corporations do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
    add_index :corporations, :latitude
    add_index :corporations, :longitude
  end
end
