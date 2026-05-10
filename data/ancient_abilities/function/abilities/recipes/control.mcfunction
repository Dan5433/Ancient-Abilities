execute as @s[tag=ancient_abilities.restricted] run return run function ancient_abilities:abilities/recipes/remove_all
execute as @s[] run return run function ancient_abilities:abilities/recipes/remove_all


execute if data storage ancient_abilities:database taken_abilities[{warp_gate:true}] run recipe take @s ancient_abilities:unique/warp_gate
execute unless data storage ancient_abilities:database taken_abilities[{warp_gate:true}] run recipe give @s ancient_abilities:unique/warp_gate

function ancient_abilities:abilities/recipes/control_rare_recipe
function ancient_abilities:abilities/recipes/control_epic_recipe
function ancient_abilities:abilities/recipes/control_legendary_recipe