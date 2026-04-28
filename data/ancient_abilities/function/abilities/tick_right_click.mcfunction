execute as @s[team=ancient_abilities.abilities.unique.warp_gate] if score @s ancient_abilities.ability_startup_timer matches ..0 run scoreboard players set @s ancient_abilities.ability_startup_timer 160

scoreboard players operation $timer_seconds ancient_abilities.temp = @s ancient_abilities.ability_startup_timer
scoreboard players operation $timer_seconds ancient_abilities.temp /= $seconds_in_tick ancient_abilities.constants 
function ancient_abilities:actionbar_message {target:'@s',message:[{score:{name:'$timer_seconds',objective:"ancient_abilities.temp"},color:green},{text:'s'}]}
scoreboard players remove @s ancient_abilities.ability_startup_timer 1

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] if score @s ancient_abilities.ability_startup_timer matches 0 at @s run return run function ancient_abilities:abilities/warp_gate/warp