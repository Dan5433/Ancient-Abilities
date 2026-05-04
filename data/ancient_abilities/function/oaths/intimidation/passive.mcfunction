execute as @a[distance=10..,tag=ancient_abilities.intimidation_chained_down] run return run function ancient_abilities:oaths/intimidation/unchain

data modify storage ancient_abilities:temp UUID set from entity @s UUID
execute as @a[distance=..10] run function ancient_abilities:oaths/intimidation/chain_down with storage ancient_abilities:temp