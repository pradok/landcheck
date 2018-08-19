class CreateLgas < ActiveRecord::Migration[5.2]
  def change
    create_table :lgas do |t|
      t.integer :code, null: false, limit: 3
      t.string :name
      t.string :long_name

      t.timestamps
    end
    add_index :lgas, :code, unique: true
  end
end
