execute as @s[tag=ancient_abilities.restricted] run return run title @s actionbar {text:"Restricted",color:red}


scoreboard players remove @s ancient_abilities.multi.effect_cooldown 1



scoreboard players operation $timer_seconds ancient_abilities.temp = @s ancient_abilities.multi.effect_cooldown
scoreboard players operation $timer_minutes ancient_abilities.temp = $timer_seconds ancient_abilities.temp


scoreboard players operation $timer_minutes ancient_abilities.temp /= $seconds_in_minute ancient_abilities.constants

scoreboard players operation $timer_seconds ancient_abilities.temp %= $seconds_in_minute ancient_abilities.constants


execute if score $timer_minutes ancient_abilities.temp matches 0 run return run title @s actionbar [{text:"Next effect: ",color:light_purple},{score:{name:'@s',objective:"ancient_abilities.multi.effect_cooldown"},color:dark_purple},{text:'s',color:dark_purple}]

title @s actionbar [{text:"Next effect: ",color:light_purple},{score:{name:"$timer_minutes",objective:"ancient_abilities.temp"},color:dark_purple},{text:"m ",color:dark_purple},{score:{name:"$timer_seconds",objective:"ancient_abilities.temp"},color:dark_purple},{text:'s',color:dark_purple}]