class CreateCarImages < ActiveRecord::Migration[6.0]
  def change
    create_table :car_images do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
