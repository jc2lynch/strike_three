class AddLeagueIdToPicksTable < ActiveRecord::Migration
  def change
    add_reference :picks, :league, index: true
    add_foreign_key :picks, :leagues
  end
end
