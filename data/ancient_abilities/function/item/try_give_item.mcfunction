advancement revoke @s only ancient_abilities:inventory_changed

execute unless predicate ancient_abilities:ability_grants_item run return fail
execute if predicate ancient_abilities:has_ability_item run return fail

# Ensure players always have their ability item

execute unless predicate ancient_abilities:has_empty_slot run return run function ancient_abilities:message {target:'@s',message:{text:"Full inventory! Free up space for your ability item.",color:red}}

function ancient_abilities:item/give_item