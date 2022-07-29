class CreateMotorcycles < ActiveRecord::Migration[7.0]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :image
      t.string :specification
      t.integer :price

      t.timestamps
    end
  end
end
