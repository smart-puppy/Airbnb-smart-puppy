class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.integer :bike_id
      t.integer :user_id

      t.timestamps
    end
  end
end
