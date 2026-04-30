data modify storage ancient_abilities:player_database temp set from entity @s UUID

data modify storage ancient_abilities:player_database args.UUID0 set from storage ancient_abilities:player_database temp[0]
data modify storage ancient_abilities:player_database args.UUID1 set from storage ancient_abilities:player_database temp[1]
data modify storage ancient_abilities:player_database args.UUID2 set from storage ancient_abilities:player_database temp[2]
data modify storage ancient_abilities:player_database args.UUID3 set from storage ancient_abilities:player_database temp[3]