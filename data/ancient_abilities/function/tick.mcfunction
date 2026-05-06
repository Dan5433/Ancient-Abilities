# General
# Prevent dropping ability items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ancient_abilities:{ability_item:true}}}}}]

# Prevent ability item pickup
execute as @a if items entity @s player.cursor *[custom_data~{ancient_abilities:{ability_item:true}}] run item replace entity @s player.cursor with air

# Regive attributes after death
execute as @e[type=player,scores={ancient_abilities.deaths=1..}] run function ancient_abilities:abilities/regive_attributes

# Control ability recipes
execute as @a run function ancient_abilities:abilities/recipes/control


# Dialog
# Enable trigger
scoreboard players enable @a ancient_abilities.info

# Display
execute as @a unless score @s ancient_abilities.info matches 0 run function ancient_abilities:dialog/show_info


# Oaths
# Check for signed oath book
execute as @a[predicate=ancient_abilities:holding_oaths/any] at @s run function ancient_abilities:oaths/try_assign

# Null
# Poison particles
execute at @a[scores={ancient_abilities.null_posion=1..}] run particle entity_effect{color:-13550049} ~ ~1 ~ 0.15 0.075 0.15 0 1

# Hunter
# Remove waypoints by default
execute as @a[tag=!ancient_abilities.joined] run function ancient_abilities:remove_waypoints_by_default

# Intimidation
execute as @a[team=ancient_abilities.oaths.intimidation] at @s run function ancient_abilities:oaths/intimidation/passive


# Abilities
# Cancel when not using item
execute as @a[advancements={ancient_abilities:right_click_ability_item=false},predicate=ancient_abilities:has_ability_timer,predicate=ancient_abilities:ability_grants_item] run function ancient_abilities:abilities/cancel
execute as @a[advancements={ancient_abilities:right_click_ability_item=true}] run advancement revoke @s only ancient_abilities:right_click_ability_item

# Warp Gate
# Teleport other entities to safe location
execute as @e[team=ancient_abilities.warped] at @s run function ancient_abilities:abilities/warp_gate/warp/tp_to_safe_location

# Summoning
# Befriend mobs
execute as @a[team=ancient_abilities.abilities.unique.summoning] at @s run team join ancient_abilities.abilities.unique.summoning @e[distance=..10,type=!#ancient_abilities:unfriendable]

# Heightened Sense
# Blind
execute as @a[team=ancient_abilities.abilities.rare.blind] at @s run function ancient_abilities:abilities/heightened_sense/blind/passive

# Physical
execute as @a[team=ancient_abilities.abilities.rare.physical] run function ancient_abilities:abilities/heightened_sense/physical/passive

# Radius
execute as @a[team=ancient_abilities.abilities.rare.radius] at @s run function ancient_abilities:abilities/heightened_sense/radius/name_players_in_radius

# Super Durability
execute as @a[team=ancient_abilities.abilities.epic.durability] run function ancient_abilities:abilities/super_durability/passive

# Delay
execute as @a[team=ancient_abilities.abilities.epic.delay,scores={ancient_abilities.ability_startup_timer=..0}] at @s run execute as @e[distance=..25] run function ancient_abilities:abilities/delay/apply_damage with storage ancient_abilities:temp
execute as @a[team=ancient_abilities.abilities.epic.delay,scores={ancient_abilities.ability_startup_timer=..0}] run function ancient_abilities:abilities/delay/reset

# Enchanter
execute as @a[team=ancient_abilities.abilities.legendary.enchanter] unless score @s ancient_abilities.enchanter.enchant_level matches 0.. if predicate ancient_abilities:is_crouching run function ancient_abilities:abilities/tick_right_click
execute as @a[team=ancient_abilities.abilities.legendary.enchanter] unless predicate ancient_abilities:is_crouching if predicate ancient_abilities:has_ability_timer run function ancient_abilities:abilities/cancel
execute as @a[team=ancient_abilities.abilities.legendary.enchanter,scores={ancient_abilities.enchanter.enchant_level=1..}] unless predicate ancient_abilities:is_crouching at @s run function ancient_abilities:abilities/enchanter/enchant

# Invisibility
execute as @a[team=ancient_abilities.abilities.legendary.invis] unless score @s ancient_abilities.ability_active_timer matches 1.. if predicate ancient_abilities:is_crouching run function ancient_abilities:abilities/tick_right_click
execute as @a[team=ancient_abilities.abilities.legendary.invis] unless predicate ancient_abilities:is_crouching if predicate ancient_abilities:has_ability_timer run function ancient_abilities:abilities/cancel

# Multi
execute as @a[team=ancient_abilities.abilities.legendary.multi] run function ancient_abilities:abilities/multi/passive
execute as @a[team=ancient_abilities.abilities.legendary.multi] unless score @s ancient_abilities.multi.effect_cooldown matches 1.. run function ancient_abilities:abilities/multi/roll_effect


# Tick startup on specific abilities
execute as @a[predicate=ancient_abilities:ability_auto_ticks_startup,scores={ancient_abilities.ability_startup_timer=0..}] run function ancient_abilities:abilities/tick_right_click

# Set crouch state
execute as @a[predicate=ancient_abilities:is_crouching] run scoreboard players set @s ancient_abilities.crouched 1
execute as @a[predicate=!ancient_abilities:is_crouching] run scoreboard players set @s ancient_abilities.crouched 0