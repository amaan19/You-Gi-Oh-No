class UpdateGamestate < ActiveRecord::Migration[5.2]
  def change
    add_column :gamestates, :turn, :integer
  end
end
