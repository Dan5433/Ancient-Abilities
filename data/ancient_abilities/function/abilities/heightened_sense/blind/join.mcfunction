data modify storage ancient_abilities:database taken_abilities append value {heightened_sense_blind:true}
team join ancient_abilities.abilities.rare.blind @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Heightened Sense Blind ability.",color:light_purple}}