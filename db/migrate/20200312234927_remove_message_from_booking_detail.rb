class RemoveMessageFromBookingDetail < ActiveRecord::Migration[6.0]
  def change
    remove_column :booking_details, :message
    add_column :booking_details, :message, :text
  end
end
