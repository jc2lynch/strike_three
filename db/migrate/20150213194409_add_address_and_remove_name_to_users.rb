class AddAddressAndRemoveNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    remove_column :users, :name
  end
end
