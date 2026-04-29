execute if predicate ancient_abilities:holding_oaths/hunter run function ancient_abilities:oaths/hunter/join

execute if predicate ancient_abilities:holding_oaths/intimidation run function ancient_abilities:oaths/intimidation/join

execute if predicate ancient_abilities:holding_oaths/nullification run function ancient_abilities:oaths/nullification/join

execute if predicate ancient_abilities:holding_oaths/restriction run function ancient_abilities:oaths/restriction/join

execute at @s run summon lightning_bolt ~ ~ ~

item replace entity @s weapon.mainhand with air