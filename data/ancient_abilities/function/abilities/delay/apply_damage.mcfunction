execute if score $success ancient_abilities.temp matches 1 run return fail
scoreboard players reset $success ancient_abilities.temp
execute store success score $success ancient_abilities.temp run execute on attacker run data get entity @s UUID
execute unless score $success ancient_abilities.temp matches 1 run return fail

execute on attacker as @s[team=!ancient_abilities.abilities.epic.delay] run return fail
execute on attacker if score @s ancient_abilities.ability_startup_timer matches 1.. run return fail

execute on attacker run function ancient_abilities:abilities/delay/store_damage_data
function ancient_abilities:abilities/delay/damage with storage ancient_abilities:temp