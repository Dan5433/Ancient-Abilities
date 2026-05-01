data modify storage ancient_abilities:temp revealUUID set from entity @s UUID
function ancient_abilities:abilities/heightened_sense/radius/set_player_to_check with storage ancient_abilities:temp
function ancient_abilities:player_database/does_player_have_data with storage ancient_abilities:temp

execute if score $player_has_data ancient_abilities.temp matches 1 run return run scoreboard players reset $player_has_data ancient_abilities.temp
scoreboard players reset $player_has_data ancient_abilities.temp

$title @a[nbt={UUID:$(UUID)}] actionbar [{selector:"@s",color:red}," is within 40 blocks of you"]

$execute as @a[nbt={UUID:$(UUID)}] run function ancient_abilities:player_database/merge_in_with_existing
function ancient_abilities:abilities/heightened_sense/radius/append_revealed_player with storage ancient_abilities:temp
$execute as @a[nbt={UUID:$(UUID)}] run function ancient_abilities:player_database/set_in