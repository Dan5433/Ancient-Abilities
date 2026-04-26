advancement revoke @s only ancient_abilities:got_hurt

function ancient_abilities:actionbar_message {target:'@s',message:{text:"Cancelled",color:red}}

execute as @s[scores={ancient_abilities.given_ability_startup_timer=1..}] run return run function ancient_abilities:abilities/cancel_given

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] run return run function ancient_abilities:abilities/warp_gate/cancel_self