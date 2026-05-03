execute store result storage ancient_abilities:temp damage float 0.1 run scoreboard players get @s ancient_abilities.delay_damage
data modify storage ancient_abilities:temp UUID set from entity @s UUID

title @s actionbar {text:"Damaged target",color:light_purple}