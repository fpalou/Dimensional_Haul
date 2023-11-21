class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :perks
      t.boolean :confirmation
      t.integer :guests
      t.references :users, null: false, foreign_key: true
      t.references :dimensions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
