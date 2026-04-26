advancement revoke @s only ancient_abilities:inventory_changed

# Ensure players always have their ability item

execute unless predicate ancient_abilities:has_empty_slot run return run function ancient_abilities:message {target:'@s',message:{text:"Full inventory! Free up space for your ability item.",color:red}}

function ancient_abilities:item/give_item