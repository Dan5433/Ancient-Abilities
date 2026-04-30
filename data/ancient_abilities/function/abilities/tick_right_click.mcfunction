execute if score @s ancient_abilities.null_posion matches 1.. run return run title @s actionbar [{text:"Nullified: ",color:red},{score:{name:'@s',objective:ancient_abilities.null_posion}},"s"]
execute if score @s ancient_abilities.ability_right_click_cooldown matches 1.. run return run function ancient_abilities:display_cooldown {score:ancient_abilities.ability_right_click_cooldown}

execute unless score @s ancient_abilities.ability_startup_timer matches 1.. run function ancient_abilities:set_startup_timers


scoreboard players operation $timer_seconds ancient_abilities.temp = @s ancient_abilities.ability_startup_timer
scoreboard players operation $timer_seconds ancient_abilities.temp /= $ticks_in_second ancient_abilities.constants 
title @s actionbar [{score:{name:'$timer_seconds',objective:"ancient_abilities.temp"},color:green},{text:'s'}]

scoreboard players remove @s ancient_abilities.ability_startup_timer 1


execute unless score @s ancient_abilities.ability_startup_timer matches ..0 run return fail

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] at @s run return run function ancient_abilities:abilities/warp_gate/warp
execute as @s[team=ancient_abilities.oaths.hunter] at @s run return run function ancient_abilities:oaths/hunter/reveal_waypoints