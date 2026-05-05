# jump 1.5 blocks
attribute @s jump_strength modifier add ancient_abilities:multi 0.1 add_value

# 5% faster speed
attribute @s movement_speed modifier add ancient_abilities:multi 0.035 add_value

# 2 extra hearts of health
attribute @s max_health modifier add ancient_abilities:multi 4 add_value

# Fall damage reduced by 80%
attribute @s fall_damage_multiplier modifier add ancient_abilities:multi -0.8 add_value


execute as @s[team=ancient_abilities.abilities.legendary.multi] run return fail

data modify storage ancient_abilities:database taken_abilities append value {multi:true}
team join ancient_abilities.abilities.legendary.multi @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Multi ability.",color:light_purple}}