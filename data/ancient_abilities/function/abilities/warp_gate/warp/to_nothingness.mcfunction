execute at @s in ancient_abilities:the_nothingness run tp @s ~ ~ ~
execute at @s in ancient_abilities:the_nothingness run spreadplayers ~ ~ 0 100 false @s

execute at @s in ancient_abilities:the_nothingness positioned over world_surface if block ~ ~-1 ~ #ancient_abilities:warp_unsafe positioned ~ ~-1 ~ run function ancient_abilities:abilities/warp_gate/warp/create_platform

execute at @s in ancient_abilities:the_nothingness run playsound block.end_portal.spawn player @s ~ ~ ~ 1 0.25