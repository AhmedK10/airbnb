class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.float :total_price
      t.integer :number_of_guests
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
