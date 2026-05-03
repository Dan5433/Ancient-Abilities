execute on attacker as @s[team=!ancient_abilities.abilities.epic.healer] run return fail
execute on attacker run scoreboard players set @s ancient_abilities.ability_left_click_cooldown 70

tag @s add ancient_abilities.given_ability.heal

scoreboard players set @s ancient_abilities.given_ability_startup_timer 2