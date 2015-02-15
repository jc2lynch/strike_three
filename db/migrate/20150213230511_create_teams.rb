class CreateTeams < ActiveRecord::Migration
  def change
    create_table :picks do |t|
    	t.string :week
    	t.integer :user_id
    	t.integer :team_id
      t.timestamps null: false
    end
    add_index :picks, :user_id
    add_foreign_key :picks, :users
    add_index :picks, :team_id
    add_foreign_key :picks, :teams
  end

end