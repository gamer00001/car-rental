class AddImageToCars < ActiveRecord::Migration[6.0]
  def change
    add_attachment :cars, :image
  end
end
