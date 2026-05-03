execute if score @s ancient_abilities.delay_damage matches 1.. run return run scoreboard players reset @s ancient_abilities.damage_dealt

scoreboard players operation @s ancient_abilities.delay_damage = @s ancient_abilities.damage_dealt
scoreboard players reset @s ancient_abilities.damage_dealt