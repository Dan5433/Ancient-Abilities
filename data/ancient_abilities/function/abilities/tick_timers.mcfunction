execute as @e[scores={ancient_abilities.given_ability_startup_timer=1..}] run function ancient_abilities:abilities/tick_given_startup_timer

execute as @e[scores={ancient_abilities.given_ability_startup_timer=..0}] run function ancient_abilities:abilities/trigger_given

schedule function ancient_abilities:abilities/tick_timers 1s