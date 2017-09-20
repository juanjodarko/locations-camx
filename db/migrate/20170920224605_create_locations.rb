class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :nombre
      t.string :tipo
      t.decimal :lat
      t.decimal :lng
      t.string :created_by
      t.integer :card_id

      t.timestamps
    end
  end
end
