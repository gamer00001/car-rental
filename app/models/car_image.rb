class CarImage < ApplicationRecord
  belongs_to :car

  has_attached_file :image_file_name,
  :path => ":rails_root/public/images/:filename",
  :url  => "/images/:id/:filename"

  do_not_validate_attachment_file_type :image_file_name
end
