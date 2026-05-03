scoreboard players reset @s ancient_abilities.given_ability_startup_timer

execute as @s[tag=ancient_abilities.given_ability.warp_gate] run return run function ancient_abilities:abilities/warp_gate/warp_other

execute as @s[tag=ancient_abilities.given_ability.heal] at @s run return run function ancient_abilities:abilities/healer/heal_other