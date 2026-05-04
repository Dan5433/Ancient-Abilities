advancement revoke @s only ancient_abilities:craft_abilities/rare

function ancient_abilities:abilities/leave


scoreboard players set $count ancient_abilities.temp 0
execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] run scoreboard players add $count ancient_abilities.temp 1

execute if score $count ancient_abilities.temp matches 1 run scoreboard players set $random ancient_abilities.temp 1
execute if score $count ancient_abilities.temp matches 2 store result score $random ancient_abilities.temp run random value 1..2 ancient_abilities:rare_abilities
execute if score $count ancient_abilities.temp matches 3 store result score $random ancient_abilities.temp run random value 1..3 ancient_abilities:rare_abilities


scoreboard players set $current ancient_abilities.temp 0

execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/heightened_sense/radius/join

execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/heightened_sense/blind/join

execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/heightened_sense/physical/join