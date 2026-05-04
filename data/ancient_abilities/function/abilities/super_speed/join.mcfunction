# double total movement speed
attribute @s movement_speed modifier add ancient_abilities:super_speed 1 add_multiplied_total


execute as @s[team=ancient_abilities.abilities.epic.speed] run return fail

data modify storage ancient_abilities:database taken_abilities append value {super_speed:true}
team join ancient_abilities.abilities.epic.speed @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Super Speed ability.",color:light_purple}}