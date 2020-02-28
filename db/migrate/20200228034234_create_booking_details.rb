class CreateBookingDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :baby_sitter_registration, null: false, foreign_key: true
      t.string :name
      t.string :age
      t.string :number
      t.string :country
      t.string :city
      t.string :date
      t.string :message
      t.string :status
      t.boolean :is_completed



      t.timestamps
    end
  end
end
