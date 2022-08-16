class Car < ApplicationRecord
    has_attached_file :image, :styles => { :medium => "238x238>", :thumb => "100x100>"}
    validates_attachment :image, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }

    belongs_to :category
    has_many :bookings
end
