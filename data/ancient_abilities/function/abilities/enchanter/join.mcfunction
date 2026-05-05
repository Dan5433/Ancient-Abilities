data modify storage ancient_abilities:database taken_abilities append value {enchanter:true}
team join ancient_abilities.abilities.legendary.enchanter @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Enchanter ability.",color:light_purple}}