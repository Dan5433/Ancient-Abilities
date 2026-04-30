scoreboard players remove @s ancient_abilities.given_ability_startup_timer 1

title @s actionbar [{text:"Given: ",color:green},{score:{name:'@s',objective:"ancient_abilities.given_ability_startup_timer"}},'s']

execute if score @s ancient_abilities.given_ability_startup_timer matches 0 run function ancient_abilities:abilities/trigger_given