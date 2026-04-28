execute if score @s ancient_abilities.ability_right_click_cooldown matches 0.. run return run title @s actionbar [{text:"On Cooldown: ",color:red},{score:{name:"@s",objective:"ancient_abilities.ability_right_click_cooldown"}},{text:"s"}]

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] if score @s ancient_abilities.ability_startup_timer matches ..0 run scoreboard players set @s ancient_abilities.ability_startup_timer 160

scoreboard players operation $timer_seconds ancient_abilities.temp = @s ancient_abilities.ability_startup_timer
scoreboard players operation $timer_seconds ancient_abilities.temp /= $seconds_in_tick ancient_abilities.constants 
title @s actionbar [{score:{name:'$timer_seconds',objective:"ancient_abilities.temp"},color:green},{text:'s'}]

scoreboard players remove @s ancient_abilities.ability_startup_timer 1

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] if score @s ancient_abilities.ability_startup_timer matches 0 at @s run return run function ancient_abilities:abilities/warp_gate/warp