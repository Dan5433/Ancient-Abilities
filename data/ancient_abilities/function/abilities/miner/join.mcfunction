data modify storage ancient_abilities:database taken_abilities append value {miner:true}
team join ancient_abilities.abilities.legendary.miner @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Miner ability.",color:light_purple}}