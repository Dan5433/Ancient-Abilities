function ancient_abilities:player_database/get_player_to_out
data modify storage ancient_abilities:player_database in merge from storage ancient_abilities:player_database out

data modify storage ancient_abilities:player_database in.UUID set from entity @s UUID

data remove storage ancient_abilities:player_database out