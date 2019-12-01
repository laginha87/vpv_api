class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.string :name
      t.text :description
      t.string :icon

      t.timestamps
    end
  end
end
