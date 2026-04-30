function ancient_abilities:player_database/get_player_to_out
data modify storage ancient_abilities:player_database in merge from storage ancient_abilities:player_database out

data modify storage ancient_abilities:player_database in.UUID set from entity @s UUID


function ancient_abilities:player_database/internal/load_uuid
function ancient_abilities:player_database/internal/set with storage ancient_abilities:player_database args


function ancient_abilities:player_database/internal/clear_temp
data remove storage ancient_abilities:player_database in
data remove storage ancient_abilities:player_database out