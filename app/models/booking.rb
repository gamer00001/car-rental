class Booking < ApplicationRecord
    has_attached_file :driving_license_image, :styles => { :medium => "238x238>", :thumb => "100x100>"}
    validates_attachment :driving_license_image, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }
    belongs_to :car



    before_save do 
        self.total_price = calculate_total_price
        self.advance_booking_price = calculate_advance_price
    end

    def calculate_total_price
        (Car.find(self.car_id).price) * (self.end_date - self.start_date).to_i 
    end

    def calculate_advance_price
        calculate_total_price * 0.2
    end
end
