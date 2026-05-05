data modify storage ancient_abilities:database taken_abilities append value {delay:true}
team join ancient_abilities.abilities.epic.delay @s

function ancient_abilities:abilities/join

scoreboard players reset @s ancient_abilities.damage_dealt

function ancient_abilities:message {target:'@s',message:{text:"You now have the Delay ability.",color:light_purple}}