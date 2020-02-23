class CreateBabySitterRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :baby_sitter_registrations do |t|
      
      t.references :user, null: true, foreign_key: true
      t.string :country
      t.string :city
      t.string :available_date
      t.string :language
      t.string :gender
      t.string :description
      t.string :amount
      t.string :upload_cv
      t.string :upload_image

      t.timestamps
    end
  end
end
