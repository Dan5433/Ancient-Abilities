execute as @s[tag=ancient_abilities.restricted] run return run title @s actionbar {text:"Restricted",color:red}


scoreboard players set @s ancient_abilities.deaths 0

execute if predicate ancient_abilities:ability_grants_item run function ancient_abilities:item/try_give_item

execute as @s[team=ancient_abilities.abilities.rare.physical] run return run function ancient_abilities:abilities/heightened_sense/physical/join
execute as @s[team=ancient_abilities.abilities.epic.speed] run return run function ancient_abilities:abilities/super_speed/join
execute as @s[team=ancient_abilities.abilities.epic.damage] run return run function ancient_abilities:abilities/super_damage/join
execute as @s[team=ancient_abilities.abilities.legendary.multi] run function ancient_abilities:abilities/multi/join