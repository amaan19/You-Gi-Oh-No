class GameStateUpdate < ActiveRecord::Migration[5.2]
  def change
    add_column :gamestates, :p1field, :string
    add_column :gamestates, :p2field, :string
  end
end
