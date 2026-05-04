effect give @s conduit_power 1 0

# 20% resistance
effect give @s resistance 1 0

execute if score @s ancient_abilities.health matches ..6 run effect give @s invisibility 1 0 true

execute at @s unless block ~ ~ ~ cobweb run attribute @s movement_speed modifier remove ancient_abilities:multi_cobweb