class AddCarReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :car
  end
end
