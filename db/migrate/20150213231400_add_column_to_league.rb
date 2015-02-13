class AddColumnToLeague < ActiveRecord::Migration
  def change
    add_column :leagues, :name, :string
  end
end
