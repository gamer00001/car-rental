class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :number
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
