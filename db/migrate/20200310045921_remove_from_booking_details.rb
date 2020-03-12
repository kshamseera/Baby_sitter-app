class RemoveFromBookingDetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :booking_details,:country
    remove_column :booking_details,:is_completed
  end
end
