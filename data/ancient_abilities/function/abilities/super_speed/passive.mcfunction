execute if block ~ ~ ~ water run effect give @s minecraft:dolphins_grace 1 0 true

execute if score @s ancient_abilities.sprint matches 100.. run function ancient_abilities:abilities/super_speed/apply_debuff {move_score:ancient_abilities.sprint, hunger_level:9}
execute if score @s ancient_abilities.swim matches 100.. run function ancient_abilities:abilities/super_speed/apply_debuff {move_score:ancient_abilities.swim, hunger_level:4}

execute if score @s ancient_abilities.walk_under_water matches 100.. run function ancient_abilities:abilities/super_speed/apply_debuff {move_score:ancient_abilities.walk_under_water, hunger_level:3}
execute if score @s ancient_abilities.walk matches 100.. run function ancient_abilities:abilities/super_speed/apply_debuff {move_score:ancient_abilities.walk, hunger_level:1}