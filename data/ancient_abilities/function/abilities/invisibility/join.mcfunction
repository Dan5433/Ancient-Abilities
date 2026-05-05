data modify storage ancient_abilities:database taken_abilities append value {invisibility:true}
team join ancient_abilities.abilities.legendary.invis @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Invisibility ability.",color:light_purple}}