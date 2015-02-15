class CreateLeagueUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :leagues_users, id: false do |t|
      t.belongs_to :league, index: true
      t.belongs_to :user, index: true
    end
  end
end
