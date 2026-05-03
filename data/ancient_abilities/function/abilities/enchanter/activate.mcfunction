scoreboard players set @s ancient_abilities.ability_right_click_cooldown 90

execute store result score @s ancient_abilities.enchanter.enchant_level run xp query @s levels
scoreboard players operation @s ancient_abilities.enchanter.enchant_level *= $3 ancient_abilities.constants
scoreboard players add @s ancient_abilities.enchanter.enchant_level 1