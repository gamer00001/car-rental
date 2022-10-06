class AddAttachmentToCarImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :car_images, :image_url, :text
    add_attachment :car_images, :image_file_name
  end
end
