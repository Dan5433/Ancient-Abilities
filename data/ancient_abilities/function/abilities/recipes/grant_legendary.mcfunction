advancement revoke @s only ancient_abilities:craft_abilities/legendary

function ancient_abilities:abilities/leave


scoreboard players set $count ancient_abilities.temp 0
execute unless data storage ancient_abilities:database taken_abilities[{invisiblity:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{multi:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{enchanter:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{miner:true}] run scoreboard players add $count ancient_abilities.temp 1

execute if score $count ancient_abilities.temp matches 1 run scoreboard players set $random ancient_abilities.temp 1
execute if score $count ancient_abilities.temp matches 2 store result score $random ancient_abilities.temp run random value 1..2 ancient_abilities:legendary_abilities
execute if score $count ancient_abilities.temp matches 3 store result score $random ancient_abilities.temp run random value 1..3 ancient_abilities:legendary_abilities
execute if score $count ancient_abilities.temp matches 4 store result score $random ancient_abilities.temp run random value 1..4 ancient_abilities:legendary_abilities


scoreboard players set $current ancient_abilities.temp 0

execute unless data storage ancient_abilities:database taken_abilities[{invisiblity:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run return run function ancient_abilities:abilities/invisibility/join

execute unless data storage ancient_abilities:database taken_abilities[{multi:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run return run function ancient_abilities:abilities/multi/join

execute unless data storage ancient_abilities:database taken_abilities[{enchanter:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run return run function ancient_abilities:abilities/enchanter/join

execute unless data storage ancient_abilities:database taken_abilities[{miner:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run return run function ancient_abilities:abilities/miner/join