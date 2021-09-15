class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.integer :prosperity
      t.integer :activeness
      t.integer :kills
      t.string :status
      t.belongs_to :union, null: false, foreign_key: true

      t.timestamps
    end
  end
end
