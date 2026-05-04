playsound item.book.page_turn player @s ~ ~ ~
scoreboard players add @s ancient_abilities.enchanter.enchant_level 1

title @s actionbar [{text:"Level: ",color:light_purple},{score:{name:'@s',objective:"ancient_abilities.enchanter.enchant_level"},color:dark_purple}]

execute store result score $max_levels ancient_abilities.temp run xp query @s levels
scoreboard players operation $max_levels ancient_abilities.temp *= $3 ancient_abilities.constants
execute if score @s ancient_abilities.enchanter.enchant_level >= $max_levels ancient_abilities.temp run function ancient_abilities:abilities/enchanter/enchant

execute if score @s ancient_abilities.enchanter.enchant_level matches 30.. run function ancient_abilities:abilities/enchanter/enchant