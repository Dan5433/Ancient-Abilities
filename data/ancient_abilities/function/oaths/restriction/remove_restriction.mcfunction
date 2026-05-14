tag @s remove ancient_abilities.restricted
execute at @s run playsound block.trial_spawner.ominous_activate player @s ~ ~ ~

function ancient_abilities:item/try_give_item

function ancient_abilities:message {target:'@s',message:{text:"The player restricting you has been killed! You are now unrestricted.",color:green}}