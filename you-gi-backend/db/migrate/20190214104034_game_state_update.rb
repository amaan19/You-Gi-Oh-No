class GameStateUpdate < ActiveRecord::Migration[5.2]
  def change
    add_column :gamestates, :p1field, :integer
    add_column :gamestates, :p2field, :integer
  end
end
