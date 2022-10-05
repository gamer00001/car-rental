class Car < ApplicationRecord
    has_attached_file :image, :styles => { :medium => "238x238>", :thumb => "100x100>"}
    validates_attachment :image, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }

    has_attached_file :image,
    :path => ":rails_root/public/images/:filename",
    :url  => "/images/:id/:filename"

    do_not_validate_attachment_file_type :image
    belongs_to :category
    has_many :bookings
    has_many :car_images
end
