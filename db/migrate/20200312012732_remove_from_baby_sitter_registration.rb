class RemoveFromBabySitterRegistration < ActiveRecord::Migration[6.0]
  def change
    remove_column :baby_sitter_registrations, :available_date
    add_column :baby_sitter_registrations, :available_date, :date
  end
end
