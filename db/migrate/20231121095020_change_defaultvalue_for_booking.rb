class ChangeDefaultvalueForBooking < ActiveRecord::Migration[7.1]
  def change
    change_column_default :bookings, :confirmation, from: nil, to: false
  end
end
