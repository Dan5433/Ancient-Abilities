scoreboard players set @s ancient_abilities.ability_startup_timer 0

execute if dimension minecraft:overworld run execute in ancient_abilities:the_nothingness run function ancient_abilities:abilities/warp_gate/warp/to_nothingness
execute if dimension ancient_abilities:the_nothingness run execute in minecraft:overworld run function ancient_abilities:abilities/warp_gate/warp/to_overworld