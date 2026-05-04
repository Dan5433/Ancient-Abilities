execute store success storage ancient_abilities:temp success_enchant int 1 run item modify entity @s weapon.mainhand ancient_abilities:enchanter
playsound block.enchantment_table.use player @s ~ ~ ~

scoreboard players operation @s ancient_abilities.enchanter.enchant_level *= $neg ancient_abilities.constants
execute store result storage ancient_abilities:temp level int 0.33333333333333333334 run scoreboard players get @s ancient_abilities.enchanter.enchant_level
function ancient_abilities:abilities/enchanter/subtract_xp with storage ancient_abilities:temp

scoreboard players reset @s ancient_abilities.enchanter.enchant_level