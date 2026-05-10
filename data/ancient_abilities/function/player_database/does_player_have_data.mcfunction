scoreboard players reset $player_has_data ancient_abilities.temp
function ancient_abilities:player_database/get_player_to_out
$execute if data storage ancient_abilities:player_database out.$(data) run scoreboard players set $player_has_data ancient_abilities.temp 1