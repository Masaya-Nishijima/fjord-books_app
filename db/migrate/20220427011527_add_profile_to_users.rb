class AddProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile, :string
    add_column :users, :address, :string
    add_column :users, :zip, :string
  end
end
