$data modify storage ancient_abilities:temp UUID set from storage ancient_abilities:player_database $(path)[$(i)]
execute store success score $iterate_success ancient_abilities.temp run function ancient_abilities:player_database/internal/loop/iteration with storage ancient_abilities:temp

execute store result score $i ancient_abilities.temp run data get storage ancient_abilities:temp i
execute if score $iterate_success ancient_abilities.temp matches 0 run scoreboard players add $i ancient_abilities.temp 1
execute store result storage ancient_abilities:temp i int 1 run scoreboard players get $i ancient_abilities.temp

function ancient_abilities:player_database/internal/loop/iterate