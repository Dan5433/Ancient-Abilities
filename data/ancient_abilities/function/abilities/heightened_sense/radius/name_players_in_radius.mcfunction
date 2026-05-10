execute as @s[tag=ancient_abilities.restricted] run return run title @s actionbar {text:"Restricted",color:red}


data modify storage ancient_abilities:temp UUID set from entity @s UUID

execute as @a[distance=0.0001..40] run function ancient_abilities:abilities/heightened_sense/radius/name_player with storage ancient_abilities:temp

execute as @a[distance=40..] run function ancient_abilities:abilities/heightened_sense/radius/remove_revealed_player_save with storage ancient_abilities:temp