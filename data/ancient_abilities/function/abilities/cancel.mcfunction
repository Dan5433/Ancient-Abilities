advancement revoke @s only ancient_abilities:got_hurt

function ancient_abilities:actionbar_message {target:'@s',message:{text:"Cancelled",color:red}}
say cancel
execute if score @s ancient_abilities.given_ability_startup_timer matches 1.. run return run function ancient_abilities:abilities/cancel_given

scoreboard players set @s ancient_abilities.ability_startup_timer 0