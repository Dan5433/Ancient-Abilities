scoreboard players set @s ancient_abilities.multi.effect_cooldown 3600

execute store result score $multi_effect ancient_abilities.temp run random value 1..11 ancient_abilities:multi_effect

execute if score $multi_effect ancient_abilities.temp matches 1 run return run effect give @s absorption 3600 3
execute if score $multi_effect ancient_abilities.temp matches 2 run return run effect give @s breath_of_the_nautilus 3600 0
execute if score $multi_effect ancient_abilities.temp matches 3 run return run effect give @s dolphins_grace 3600 0
execute if score $multi_effect ancient_abilities.temp matches 4 run return run effect give @s fire_resistance 3600 0
execute if score $multi_effect ancient_abilities.temp matches 5 run return run effect give @s hero_of_the_village 3600 4
execute if score $multi_effect ancient_abilities.temp matches 6 run return run effect give @s luck 3600 1
execute if score $multi_effect ancient_abilities.temp matches 7 run return run effect give @s regeneration 3600 0
execute if score $multi_effect ancient_abilities.temp matches 8 run return run effect give @s saturation 3600 0
execute if score $multi_effect ancient_abilities.temp matches 9 run return run effect give @s speed 3600 0
execute if score $multi_effect ancient_abilities.temp matches 10 run return run effect give @s strength 3600 0
execute if score $multi_effect ancient_abilities.temp matches 11 run return run effect give @s water_breathing 3600 0