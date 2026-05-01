data modify storage ancient_abilities:temp i set value 0
data modify storage ancient_abilities:temp executorUUID set from entity @s UUID
$data modify storage ancient_abilities:temp path set value $(path)
$data modify storage ancient_abilities:temp original_path set value $(original_path)
$data modify storage ancient_abilities:temp command set value "$(command)"

function ancient_abilities:player_database/internal/loop/iterate with storage ancient_abilities:temp

data remove storage ancient_abilities:player_database out
data remove storage ancient_abilities:temp i
data remove storage ancient_abilities:temp path
data remove storage ancient_abilities:temp original_path
data remove storage ancient_abilities:temp command
data remove storage ancient_abilities:temp UUID
data remove storage ancient_abilities:temp executorUUID
data remove storage ancient_abilities:temp iterate_success