execute on attacker as @s[team=!ancient_abilities.abilities.unique.warp_gate] run return fail

execute at @s if dimension minecraft:overworld run execute in ancient_abilities:the_nothingness run function ancient_abilities:abilities/warp_gate/warp/to_nothingness
execute at @s if dimension ancient_abilities:the_nothingness run execute in minecraft:overworld run function ancient_abilities:abilities/warp_gate/warp/to_overworld