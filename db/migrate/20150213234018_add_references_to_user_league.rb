class AddReferencesToUserLeague < ActiveRecord::Migration
  def change
  	add_reference :user_leagues, :user, index: true
  	add_reference :user_leagues, :league, index: true

  end
end
