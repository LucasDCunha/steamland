class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :Game
      t.references :User
      t.time :start_time
      t.time :end_time
      t.date :date
      t.integer :price

      t.timestamps
    end
  end
end
