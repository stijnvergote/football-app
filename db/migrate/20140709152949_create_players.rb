class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :email
      t.date :date_of_birth
      t.string :position
      t.string :best_foot
      t.string :youth_player
      t.integer :seasons
      t.integer :seasons_first_team

      t.timestamps
    end
  end
end
