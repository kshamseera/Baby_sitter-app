class RemoveFromBookingDetail < ActiveRecord::Migration[6.0]
  def change
    remove_column :booking_details, :date
    add_column :booking_details, :date, :date
  end
end
