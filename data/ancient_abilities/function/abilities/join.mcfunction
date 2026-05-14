clear @s *[custom_data~{ancient_abilities: { ability_item: true}}]

tag @s add ancient_abilities.has_ability
execute if predicate ancient_abilities:ability_grants_item run function ancient_abilities:item/try_give_item