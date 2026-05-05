# add 2.5 hearts to base damage (default = 0.5 hearts, new = 3 hearts)
attribute @s attack_damage modifier add ancient_abilities:super_damage 5 add_value

scoreboard players set @s ancient_abilities.deaths 0


execute as @s[team=ancient_abilities.abilities.epic.damage] run return fail

data modify storage ancient_abilities:database taken_abilities append value {super_damage:true}
team join ancient_abilities.abilities.epic.damage @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Super Damage ability.",color:light_purple}}