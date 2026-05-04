advancement revoke @s only ancient_abilities:craft_abilities/warp_gate

data modify storage ancient_abilities:database taken_abilities append value {warp_gate:true}
team join ancient_abilities.abilities.unique.warp_gate @s

function ancient_abilities:abilities/join

function ancient_abilities:message {target:'@s',message:{text:"You now have the Warp Gate ability.",color:light_purple}}