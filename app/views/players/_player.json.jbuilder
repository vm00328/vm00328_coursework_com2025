json.extract! player, :id, :first_name, :last_name, :age, :nationality, :created_at, :updated_at
json.url player_url(player, format: :json)
