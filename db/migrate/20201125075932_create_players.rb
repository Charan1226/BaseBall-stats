class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :league_name
      t.string :division_name
      t.string :team_city
      t.string :team_name
      t.string :sur_name
      t.string :given_name
      t.string :position
      t.string :throws
      t.integer :year
      t.integer :games
      t.integer :games_started
      t.integer :at_bats
      t.integer :runs
      t.integer :hits
      t.integer :singles
      t.integer :doubles
      t.integer :triples
      t.integer :home_runs
      t.integer :rbi
      t.integer :sacrifice_flies
      t.integer :steals
      t.integer :walks
      t.integer :hit_by_pitch
      t.integer :caught_stealing
      t.integer :sacrifice_hits
      t.integer :errors_did
      t.integer :pb
      t.integer :struck_out
      t.integer :wins
      t.integer :losses
      t.integer :saves
      t.integer :complete_games
      t.integer :shut_outs
      t.integer :earned_runs
      t.integer :hit_batter
      t.integer :wild_pitches
      t.integer :balk
      t.integer :walked_batter
      t.integer :struck_out_batter
      t.float :era
      t.float :innings

      t.timestamps
    end
  end
end
