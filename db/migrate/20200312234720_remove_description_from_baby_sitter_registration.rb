class RemoveDescriptionFromBabySitterRegistration < ActiveRecord::Migration[6.0]
  def change
    remove_column :baby_sitter_registrations, :description
    add_column :baby_sitter_registrations, :description, :text
  end
end
