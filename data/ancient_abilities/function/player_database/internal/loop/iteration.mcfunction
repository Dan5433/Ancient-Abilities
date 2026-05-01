$execute unless entity @a[nbt={UUID:$(UUID)}] run return fail

$execute as @a[nbt={UUID:$(UUID)}] run $(command)
$data remove storage ancient_abilities:player_database players[{UUID:$(executorUUID)}].$(original_path)[$(i)]
$data remove storage ancient_abilities:player_database $(path)[$(i)]