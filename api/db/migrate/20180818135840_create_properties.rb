class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :council_property_number
      t.decimal :longitude, precision: 10, scale: 6
      t.decimal :latitude, precision: 10, scale: 6
      t.integer :lga_code, limit: 3

      t.timestamps
    end
    add_index :properties, :lga_code
  end
end
