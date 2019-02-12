class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :name
      t.string :desc
      t.integer :atk
      t.integer :def
      t.string :group
      t.integer :level
      t.string :race
      t.string :element
      t.string :image_url
      t.timestamps
    end
  end
end
