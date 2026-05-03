execute if score @s ancient_abilities.null_posion matches 1.. run return run title @s actionbar [{text:"Nullified: ",color:red},{score:{name:'@s',objective:ancient_abilities.null_posion}},"s"]
execute as @s[tag=ancient_abilities.restricted] run return run title @s actionbar {text:"Restricted",color:red}
execute if score @s ancient_abilities.ability_right_click_cooldown matches 1.. run return run function ancient_abilities:display_cooldown {score:ancient_abilities.ability_right_click_cooldown}

execute unless score @s ancient_abilities.ability_startup_timer matches 0.. run return run function ancient_abilities:set_startup_timers


scoreboard players operation $timer_seconds ancient_abilities.temp = @s ancient_abilities.ability_startup_timer
scoreboard players operation $timer_seconds ancient_abilities.temp /= $ticks_in_second ancient_abilities.constants 
title @s actionbar [{score:{name:'$timer_seconds',objective:"ancient_abilities.temp"},color:green},{text:'s'}]


execute as @a[team=ancient_abilities.abilities.epic.delay,scores={ancient_abilities.damage_dealt=1..}] run function ancient_abilities:abilities/delay/set_delay_damage


execute if score @s ancient_abilities.ability_startup_timer matches 1.. run return run scoreboard players remove @s ancient_abilities.ability_startup_timer 1

scoreboard players reset @s ancient_abilities.ability_startup_timer
execute as @s[team=ancient_abilities.abilities.unique.warp_gate] at @s run return run function ancient_abilities:abilities/warp_gate/warp
execute as @s[team=ancient_abilities.oaths.hunter] at @s run return run function ancient_abilities:oaths/hunter/reveal_waypoints
execute as @s[team=ancient_abilities.abilities.epic.healer] at @s run return run function ancient_abilities:abilities/healer/self_heal
execute as @s[team=ancient_abilities.abilities.legendary.enchanter] run return run function ancient_abilities:abilities/enchanter/activate