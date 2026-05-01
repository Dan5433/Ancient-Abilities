data modify storage ancient_abilities:temp revealUUID set from entity @s UUID
$data modify storage ancient_abilities:temp data set value "revealed[{UUID:$(revealUUID)}]"
function ancient_abilities:player_database/does_player_have_data with storage ancient_abilities:temp

execute if score $player_has_data ancient_abilities.temp matches 1 run return fail

$title @a[nbt={UUID:$(UUID)}] actionbar [{selector:"@s",color:red}," is within 40 blocks of you"]

$execute as @a[nbt={UUID:$(UUID)}] run function ancient_abilities:player_database/merge_in_with_existing
$data modify storage ancient_abilities:player_database in.revealed append value {UUID:$(revealUUID)}
$execute as @a[nbt={UUID:$(UUID)}] run function ancient_abilities:player_database/set_in