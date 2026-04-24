tp @s ~ ~ ~
spreadplayers ~ ~ 0 100 false @s

execute positioned over world_surface if block ~ ~-1 ~ #ancient_abilities:warp_unsafe positioned ~ ~-1 ~ run function ancient_abilities:abilities/warp_gate/right_click/warp_platform

playsound block.end_portal.spawn player @s ~ ~ ~ 1 0.25