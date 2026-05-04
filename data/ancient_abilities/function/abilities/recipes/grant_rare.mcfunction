advancement revoke @s only ancient_abilities:craft_abilities/rare

function ancient_abilities:abilities/leave



execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] if data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] run return run function ancient_abilities:abilities/heightened_sense/radius/join
execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] if data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] run return run function ancient_abilities:abilities/heightened_sense/blind/join
execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] if data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] run return run function ancient_abilities:abilities/heightened_sense/physical/join


execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] store result score $ability ancient_abilities.temp run random value 2..3 ancient_abilities:rare_abilities
execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] store result score $ability ancient_abilities.temp run random value 4..5 ancient_abilities:rare_abilities
execute if data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] store result score $ability ancient_abilities.temp run random value 1..2 ancient_abilities:rare_abilities


execute unless data storage ancient_abilities:database taken_abilities[{heightened_sense_radius:true}] unless data storage ancient_abilities:database taken_abilities[{heightened_sense_blind:true}] unless data storage ancient_abilities:database taken_abilities[{heightened_sense_physical:true}] store result score $ability ancient_abilities.temp run random value 1..3 ancient_abilities:rare_abilities


execute if score $ability ancient_abilities.temp matches 1 run return run function ancient_abilities:abilities/heightened_sense/radius/join
execute if score $ability ancient_abilities.temp matches 2 run return run function ancient_abilities:abilities/heightened_sense/blind/join
execute if score $ability ancient_abilities.temp matches 3 run return run function ancient_abilities:abilities/heightened_sense/physical/join

execute if score $ability ancient_abilities.temp matches 4 run return run function ancient_abilities:abilities/heightened_sense/radius/join
execute if score $ability ancient_abilities.temp matches 5 run return run function ancient_abilities:abilities/heightened_sense/physical/join