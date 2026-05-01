data modify storage ancient_abilities:temp revealUUID set from entity @s UUID
$data remove storage ancient_abilities:player_database players[{UUID:$(UUID)}].revealed[{UUID:$(revealUUID)}]