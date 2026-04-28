scoreboard players add @s ancient_abilities.ability_startup_timer 1

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] if score @s ancient_abilities.ability_startup_timer matches 160.. at @s run return run function ancient_abilities:abilities/warp_gate/warp