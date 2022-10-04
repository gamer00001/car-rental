class AddDescriptionAndFeatureToCar < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :description, :text
    add_column :cars, :feature, :text
  end
end
