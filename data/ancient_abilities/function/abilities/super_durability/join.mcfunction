data modify storage ancient_abilities:database taken_abilities append value {super_durability:true}
team join ancient_abilities.abilities.epic.durability @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Super Durability ability.",color:light_purple}}