json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :address, :phone, :email, :date_of_birth, :position, :best_foot, :youth_player, :seasons, :seasons_first_team
  json.url player_url(player, format: :json)
end
