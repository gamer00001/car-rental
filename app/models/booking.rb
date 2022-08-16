class Booking < ApplicationRecord
    has_attached_file :driving_license_image, :styles => { :medium => "238x238>", :thumb => "100x100>"}
    validates_attachment :driving_license_image, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }
    belongs_to :car
end
