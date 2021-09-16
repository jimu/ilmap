class CreateMaps < ActiveRecord::Migration[6.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :startx
      t.integer :starty
      t.integer :endx
      t.integer :endy
      t.integer :height
      t.integer :width
      t.integer :min_activeness
      t.integer :max_activeness
      t.integer :min_prosperity
      t.integer :max_prosperity

      t.timestamps
    end
  end
end
