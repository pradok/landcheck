class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :feature_id
      t.string :full_address
      t.integer :lga_code, limit: 3
      t.string :state, limit: 3
      t.integer :postcode, limit: 4
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
