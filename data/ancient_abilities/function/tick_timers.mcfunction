# Tick null poison
execute as @a[scores={ancient_abilities.null_posion=1..}] run scoreboard players remove @s ancient_abilities.null_posion 1

# Tick active ability timer
execute as @a[scores={ancient_abilities.ability_active_timer=1..}] run function ancient_abilities:tick_active_ability

# Tick given ability timer
execute as @e[scores={ancient_abilities.given_ability_startup_timer=1..}] run function ancient_abilities:abilities/tick_given_startup_timer

# Tick cooldown
execute as @a[scores={ancient_abilities.ability_left_click_cooldown=1..}] run scoreboard players remove @s ancient_abilities.ability_left_click_cooldown 1
execute as @a[scores={ancient_abilities.ability_right_click_cooldown=1..}] run scoreboard players remove @s ancient_abilities.ability_right_click_cooldown 1

# Tick multi effect cooldown
execute as @a[team=ancient_abilities.abilities.legendary.multi,scores={ancient_abilities.multi.effect_cooldown=1..}] run function ancient_abilities:abilities/multi/cooldown_tick

# Tick enchanter levels
execute as @a[team=ancient_abilities.abilities.legendary.enchanter,scores={ancient_abilities.enchanter.enchant_level=1..}] at @s run function ancient_abilities:abilities/enchanter/active_tick

schedule function ancient_abilities:tick_timers 1s