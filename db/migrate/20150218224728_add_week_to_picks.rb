class AddWeekToPicks < ActiveRecord::Migration
  def change
  	remove_column :picks, :week, :string
  	add_column :picks, :week, :integer
  	
  end
end
