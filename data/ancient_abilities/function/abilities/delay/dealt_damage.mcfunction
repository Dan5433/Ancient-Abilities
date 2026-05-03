advancement revoke @s only ancient_abilities:delay_hurt_entity

execute if score @s ancient_abilities.delay_damage matches 1.. run return fail
function ancient_abilities:abilities/tick_right_click