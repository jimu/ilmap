json.extract! player, :id, :name, :x, :y, :prosperity, :activeness, :kills, :status, :union_id, :created_at, :updated_at
json.url player_url(player, format: :json)
