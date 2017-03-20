class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_time
      t.date :end_time
      t.references :user, foreign_key: true
      t.references :man, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
