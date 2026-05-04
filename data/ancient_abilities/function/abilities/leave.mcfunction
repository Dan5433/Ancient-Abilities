execute as @s[team=ancient_abilities.abilities.rare.radius] run data remove storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}]
execute as @s[team=ancient_abilities.abilities.rare.physical] run function ancient_abilities:abilities/heightened_sense/physical/leave
execute as @s[team=ancient_abilities.abilities.rare.blind] run data remove storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}]

execute as @s[team=ancient_abilities.abilities.unique.warp_gate] run data remove storage ancient_abilities:database taken_abilities[{warp_gate:true}]


team leave @s

clear @s *[custom_data~{ancient_abilities: { ability_item: true}}]