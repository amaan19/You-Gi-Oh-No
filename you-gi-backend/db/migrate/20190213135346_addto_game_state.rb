class AddtoGameState < ActiveRecord::Migration[5.2]
  def change
    add_column :gamestates, :p1deckid, :integer
    add_column :gamestates, :p2deckid, :integer
  end
end
