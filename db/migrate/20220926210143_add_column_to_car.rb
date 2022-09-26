class AddColumnToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :brand, :string
    add_column :cars, :body_type, :string
  end
end
