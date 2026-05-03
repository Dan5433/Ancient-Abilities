playsound item.book.page_turn player @s ~ ~ ~
scoreboard players remove @s ancient_abilities.enchanter.enchant_level 1

title @s actionbar [{text:"Level: ",color:light_purple},{score:{name:'@s',objective:"ancient_abilities.enchanter.enchant_level"},color:dark_purple}]