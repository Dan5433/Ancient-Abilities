advancement revoke @s only ancient_abilities:got_hurt

title @s actionbar {text:"Cancelled",color:red}

execute if score @s ancient_abilities.given_ability_startup_timer matches 1.. run return run function ancient_abilities:abilities/cancel_given

scoreboard players reset @s ancient_abilities.ability_startup_timer
scoreboard players reset @s ancient_abilities.delay_damage