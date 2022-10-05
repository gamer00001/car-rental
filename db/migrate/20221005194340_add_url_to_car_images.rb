class AddUrlToCarImages < ActiveRecord::Migration[6.0]
  def change
    add_column :car_images, :image_url, :text
  end
end
