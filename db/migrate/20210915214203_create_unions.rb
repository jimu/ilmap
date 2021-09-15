class CreateUnions < ActiveRecord::Migration[6.1]
  def change
    create_table :unions do |t|
      t.string :name
      t.integer :members
      t.integer :prosperity
      t.integer :region
      t.integer :cities

      t.timestamps
    end
  end
end
