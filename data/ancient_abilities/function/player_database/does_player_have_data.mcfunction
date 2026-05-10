scoreboard players reset $stored_player_data_result ancient_abilities.temp
function ancient_abilities:player_database/get_player_to_out
$execute store result score $stored_player_data_result ancient_abilities.temp run data get storage ancient_abilities:player_database out.$(data)