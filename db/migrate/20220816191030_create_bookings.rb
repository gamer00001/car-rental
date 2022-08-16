class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.bigint :mobile
      t.timestamps
    end
    add_attachment :bookings, :driving_license_image 
  end
end
