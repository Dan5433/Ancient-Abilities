data modify storage ancient_abilities:temp data set value "restricted"
function ancient_abilities:player_database/does_player_have_data with storage ancient_abilities:temp

execute if score $stored_player_data_result ancient_abilities.temp matches 1.. run return fail
return 1