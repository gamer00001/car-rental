class AddFieldsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    add_column :bookings, :total_price, :bigint
    add_column :bookings, :advance_booking_price, :bigint
  end
end
