# jump 1.5 blocks
attribute @s jump_strength modifier add ancient_abilities:heightened_sense_physical 0.1 add_value

# add extra heart to base damage (default = 0.5 hearts, new = 1.5 hearts)
attribute @s attack_damage modifier add ancient_abilities:heightened_sense_physical 2 add_value

# 5% faster speed
attribute @s movement_speed modifier add ancient_abilities:heightened_sense_physical 0.035 add_value

scoreboard players set @s ancient_abilities.deaths 0


execute as @s[team=ancient_abilities.abilities.rare.physical] run return fail

data modify storage ancient_abilities:database taken_abilities append value {heightened_sense_physical:true}
team join ancient_abilities.abilities.rare.physical @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Heightened Sense Physical ability.",color:light_purple}}