advancement revoke @s only ancient_abilities:craft_abilities/epic

function ancient_abilities:abilities/leave


scoreboard players set $count ancient_abilities.temp 0
execute unless data storage ancient_abilities:database taken_abilities[{super_speed:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{super_durability:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{super_damage:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{healer:true}] run scoreboard players add $count ancient_abilities.temp 1
execute unless data storage ancient_abilities:database taken_abilities[{delay:true}] run scoreboard players add $count ancient_abilities.temp 1

execute if score $count ancient_abilities.temp matches 1 run scoreboard players set $random ancient_abilities.temp 1
execute if score $count ancient_abilities.temp matches 2 store result score $random ancient_abilities.temp run random value 1..2 ancient_abilities:epic_abilities
execute if score $count ancient_abilities.temp matches 3 store result score $random ancient_abilities.temp run random value 1..3 ancient_abilities:epic_abilities
execute if score $count ancient_abilities.temp matches 4 store result score $random ancient_abilities.temp run random value 1..4 ancient_abilities:epic_abilities
execute if score $count ancient_abilities.temp matches 5 store result score $random ancient_abilities.temp run random value 1..5 ancient_abilities:epic_abilities


scoreboard players set $current ancient_abilities.temp 0

execute unless data storage ancient_abilities:database taken_abilities[{super_speed:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/super_speed/join

execute unless data storage ancient_abilities:database taken_abilities[{super_durability:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/super_durability/join

execute unless data storage ancient_abilities:database taken_abilities[{super_damage:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/super_damage/join

execute unless data storage ancient_abilities:database taken_abilities[{healer:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/healer/join

execute unless data storage ancient_abilities:database taken_abilities[{delay:true}] run scoreboard players add $current ancient_abilities.temp 1
execute if score $current ancient_abilities.temp = $random ancient_abilities.temp run function ancient_abilities:abilities/delay/join