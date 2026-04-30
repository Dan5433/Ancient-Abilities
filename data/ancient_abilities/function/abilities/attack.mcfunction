execute if score @s ancient_abilities.null_posion matches 1.. run return run title @s actionbar [{text:"Nullified: ",color:red},{score:{name:'@s',objective:ancient_abilities.null_posion}},"s"]
execute as @s[tag=ancient_abilities.restricted] run return run title @s actionbar {text:"Restricted",color:red}
execute on attacker if score @s ancient_abilities.ability_left_click_cooldown matches 1.. run return run function ancient_abilities:display_cooldown {score:ancient_abilities.ability_left_click_cooldown}

function ancient_abilities:abilities/warp_gate/warp_other_startup