class AddBlueprintsToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :blueprints, :string
  end
end
