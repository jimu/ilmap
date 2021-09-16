class AddColorToUnions < ActiveRecord::Migration[6.1]
  def change
    add_column :unions, :color, :string
  end
end
