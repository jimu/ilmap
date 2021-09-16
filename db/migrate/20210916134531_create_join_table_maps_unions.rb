class CreateJoinTableMapsUnions < ActiveRecord::Migration[6.1]
  def change
    create_join_table :maps, :unions do |t|
      # t.index [:map_id, :union_id]
      # t.index [:union_id, :map_id]
    end
  end
end
