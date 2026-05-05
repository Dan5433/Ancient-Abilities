data modify storage ancient_abilities:database taken_abilities append value {healer:true}
team join ancient_abilities.abilities.epic.healer @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Healer ability.",color:light_purple}}