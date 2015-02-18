class ChangeWeeksToInteger < ActiveRecord::Migration
  def change
  	change_column :picks, :week, :string
  end
end
