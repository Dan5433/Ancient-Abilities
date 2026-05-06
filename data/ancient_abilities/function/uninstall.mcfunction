# Oaths
team remove ancient_abilities.oaths.null
team remove ancient_abilities.oaths.restrict
team remove ancient_abilities.oaths.intimidation
team remove ancient_abilities.oaths.hunter

# Abilities

# Rare
team remove ancient_abilities.abilities.rare.radius
team remove ancient_abilities.abilities.rare.blind
team remove ancient_abilities.abilities.rare.physical

# Epic
team remove ancient_abilities.abilities.epic.damage
team remove ancient_abilities.abilities.epic.speed
team remove ancient_abilities.abilities.epic.durability
team remove ancient_abilities.abilities.epic.healer
team remove ancient_abilities.abilities.epic.delay

# Legendary
team remove ancient_abilities.abilities.legendary.invis
team remove ancient_abilities.abilities.legendary.multi
team remove ancient_abilities.abilities.legendary.enchanter
team remove ancient_abilities.abilities.legendary.miner

# Unique
team remove ancient_abilities.abilities.unique.warp_gate
team remove ancient_abilities.abilities.unique.summoning
team remove ancient_abilities.abilities.unique.adaptation
team remove ancient_abilities.abilities.unique.viltrumite

# Misc/extra
team remove ancient_abilities.warped
scoreboard objectives remove ancient_abilities.deaths
scoreboard objectives remove ancient_abilities.crouched

# Scores
scoreboard objectives remove ancient_abilities.given_ability_startup_timer
scoreboard objectives remove ancient_abilities.ability_startup_timer
scoreboard objectives remove ancient_abilities.ability_active_timer

scoreboard objectives remove ancient_abilities.ability_left_click_cooldown
scoreboard objectives remove ancient_abilities.ability_right_click_cooldown

scoreboard objectives remove ancient_abilities.constants
scoreboard objectives remove ancient_abilities.temp

scoreboard objectives remove ancient_abilities.info

# Ability Specific Scores
scoreboard objectives remove ancient_abilities.null_posion
scoreboard objectives remove ancient_abilities.damage_dealt
scoreboard objectives remove ancient_abilities.delay_damage
scoreboard objectives remove ancient_abilities.enchanter.enchant_level
scoreboard objectives remove ancient_abilities.health
scoreboard objectives remove ancient_abilities.multi.effect_cooldown

# Undo gamerule change
gamerule limited_crafting false


function ancient_abilities:message {target:'@s',message:[{text:"Successfully removed all data.",color: red}]}