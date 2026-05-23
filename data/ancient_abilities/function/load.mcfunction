# Oaths
team add ancient_abilities.oaths.null
team add ancient_abilities.oaths.restrict
team add ancient_abilities.oaths.intimidation
team add ancient_abilities.oaths.hunter

# Abilities

# Rare
team add ancient_abilities.abilities.rare.radius
team add ancient_abilities.abilities.rare.blind
team add ancient_abilities.abilities.rare.physical

# Epic
team add ancient_abilities.abilities.epic.damage
team add ancient_abilities.abilities.epic.speed
team add ancient_abilities.abilities.epic.durability
team add ancient_abilities.abilities.epic.healer
team add ancient_abilities.abilities.epic.delay

# Legendary
team add ancient_abilities.abilities.legendary.invis
team add ancient_abilities.abilities.legendary.multi
team add ancient_abilities.abilities.legendary.enchanter
team add ancient_abilities.abilities.legendary.miner

# Unique
team add ancient_abilities.abilities.unique.warp_gate
team add ancient_abilities.abilities.unique.summoning
team add ancient_abilities.abilities.unique.adaptation
team add ancient_abilities.abilities.unique.viltrumite

# Misc/extra
scoreboard objectives add ancient_abilities.deaths deathCount
scoreboard objectives add ancient_abilities.crouched dummy
scoreboard objectives add ancient_abilities.sprint custom:sprint_one_cm
scoreboard objectives add ancient_abilities.swim custom:swim_one_cm
scoreboard objectives add ancient_abilities.walk custom:walk_one_cm
scoreboard objectives add ancient_abilities.walk_under_water custom:walk_under_water_one_cm

# Scores
scoreboard objectives add ancient_abilities.given_ability_startup_timer dummy
scoreboard objectives add ancient_abilities.ability_startup_timer dummy
scoreboard objectives add ancient_abilities.ability_active_timer dummy

scoreboard objectives add ancient_abilities.ability_left_click_cooldown dummy
scoreboard objectives add ancient_abilities.ability_right_click_cooldown dummy

scoreboard objectives add ancient_abilities.constants dummy
scoreboard objectives add ancient_abilities.temp dummy

scoreboard objectives add ancient_abilities.info trigger

# Ability Specific Scores
scoreboard objectives add ancient_abilities.null_posion dummy
scoreboard objectives add ancient_abilities.damage_dealt custom:damage_dealt
scoreboard objectives add ancient_abilities.delay_damage dummy
scoreboard objectives add ancient_abilities.enchanter.enchant_level dummy
scoreboard objectives add ancient_abilities.health health
scoreboard objectives add ancient_abilities.multi.effect_cooldown dummy

# Constants
scoreboard players set $ticks_in_second ancient_abilities.constants 20
scoreboard players set $seconds_in_minute ancient_abilities.constants 60
scoreboard players set $neg ancient_abilities.constants -1
scoreboard players set $3 ancient_abilities.constants 3

# Schedules
function ancient_abilities:tick_timers

# Ensure no crafting of ability items when they are taken
gamerule limited_crafting true

say [Ancient Abilities] Succesfully loaded!
function ancient_abilities:message {target:'@p',message:[{text: "Succesfully loaded! ",color: green}," ",{text: "Click here to remove all data.",color: red,bold:true,underlined:true,click_event: {action: "run_command",command: "function ancient_abilities:uninstall"},hover_event: {action:"show_text",value:{text:"Uninstall",color:red}}}]}