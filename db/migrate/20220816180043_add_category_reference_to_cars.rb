class AddCategoryReferenceToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :category
  end
end
