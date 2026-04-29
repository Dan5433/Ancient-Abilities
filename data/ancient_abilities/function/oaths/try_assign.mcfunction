execute as @s[tag=ancient_abilities.swore_oath] run return run function ancient_abilities:oaths/already_under_oath


execute if predicate ancient_abilities:holding_oaths/hunter run function ancient_abilities:oaths/hunter/join

execute if predicate ancient_abilities:holding_oaths/intimidation run function ancient_abilities:oaths/intimidation/join

execute if predicate ancient_abilities:holding_oaths/nullification run function ancient_abilities:oaths/nullification/join

execute if predicate ancient_abilities:holding_oaths/restriction run function ancient_abilities:oaths/restriction/join

item replace entity @s weapon.mainhand with air
summon lightning_bolt ~ ~3 ~
playsound item.trident.thunder player @a ~ ~ ~
tag @s add ancient_abilities.swore_oath