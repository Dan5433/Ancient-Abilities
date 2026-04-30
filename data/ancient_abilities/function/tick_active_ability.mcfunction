scoreboard players remove @s ancient_abilities.ability_active_timer 1

title @s actionbar [{text:"Active: ",color:green},{score:{name:'@s',objective:"ancient_abilities.ability_active_timer"}},'s']

execute unless score @s ancient_abilities.ability_active_timer matches 0 run return fail

execute as @s[team=ancient_abilities.oaths.hunter] run function ancient_abilities:oaths/hunter/hide_waypoints