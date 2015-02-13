class CreateUserLeagues < ActiveRecord::Migration
  def change
    create_table :user_leagues do |t|

      t.timestamps null: false
    end
  end
end
