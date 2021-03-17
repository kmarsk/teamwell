class ChangeColumnOnBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :schedule, foreign_key: true
    remove_reference :bookings, :activity
    remove_column :bookings, :date
    remove_column :bookings, :time
  end
end
