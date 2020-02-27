class RemoveFromBabySitterRegistrations < ActiveRecord::Migration[6.0]
  def change
    remove_column :baby_sitter_registrations, :upload_cv
    remove_column :baby_sitter_registrations, :upload_image
  end
end
