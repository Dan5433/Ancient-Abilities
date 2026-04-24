execute as @s[type=!player] run return run execute positioned over world_surface run tp @s ~ ~ ~

tp @s ~ ~ ~
spreadplayers ~ ~ 0 1 false @s

playsound block.end_portal.spawn player @s ~ ~ ~ 1 0.25