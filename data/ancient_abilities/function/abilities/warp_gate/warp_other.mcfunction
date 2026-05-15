team join ancient_abilities.warped @s
tag @s remove ancient_abilities.given_ability.warp_gate

effect give @s resistance 5 4 true

execute at @s if dimension minecraft:overworld run execute at @s in ancient_abilities:the_nothingness run return run function ancient_abilities:abilities/warp_gate/warp/to_nothingness

execute at @s in minecraft:overworld run function ancient_abilities:abilities/warp_gate/warp/to_overworld