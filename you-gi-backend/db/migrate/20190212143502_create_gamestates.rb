class CreateGamestates < ActiveRecord::Migration[5.2]
  def change
    create_table :gamestates do |t|
      t.integer :game_id
      t.integer :player1_id
      t.integer :player2_id
      t.integer :p1life
      t.integer :p2life
      t.string :p1deck
      t.string :p2deck
      t.string :p1hand
      t.string :p2hand
      t.string :inplay
      t.timestamps
    end
  end
end
