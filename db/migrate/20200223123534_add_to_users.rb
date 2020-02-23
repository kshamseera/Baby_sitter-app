class AddToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mobile, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :is_baby_sitter, :boolean
  end
end
