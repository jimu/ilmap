class AddAttentionToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :attention, :datetime
  end
end
