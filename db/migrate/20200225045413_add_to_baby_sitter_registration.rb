class AddToBabySitterRegistration < ActiveRecord::Migration[6.0]
  def change
    add_column :baby_sitter_registrations, :first_name, :string
    add_column :baby_sitter_registrations, :last_name, :string
  end
end
