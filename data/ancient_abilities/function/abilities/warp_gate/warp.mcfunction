scoreboard players reset @s ancient_abilities.ability_startup_timer

scoreboard players set @s ancient_abilities.ability_right_click_cooldown 300

execute if dimension minecraft:overworld run execute at @s in ancient_abilities:the_nothingness run function ancient_abilities:abilities/warp_gate/warp/to_nothingness
execute if dimension ancient_abilities:the_nothingness run execute at @s in minecraft:overworld run function ancient_abilities:abilities/warp_gate/warp/to_overworld