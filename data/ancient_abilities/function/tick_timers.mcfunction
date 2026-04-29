execute as @a[scores={ancient_abilities.null_posion=1..}] run scoreboard players remove @s ancient_abilities.null_posion 1

execute as @e[scores={ancient_abilities.given_ability_startup_timer=1..}] run function ancient_abilities:abilities/tick_given_startup_timer

execute as @e[scores={ancient_abilities.given_ability_startup_timer=..0}] run function ancient_abilities:abilities/trigger_given

execute as @a[scores={ancient_abilities.ability_left_click_cooldown=1..}] run scoreboard players remove @s ancient_abilities.ability_left_click_cooldown 1
execute as @a[scores={ancient_abilities.ability_right_click_cooldown=1..}] run scoreboard players remove @s ancient_abilities.ability_right_click_cooldown 1

schedule function ancient_abilities:tick_timers 1s