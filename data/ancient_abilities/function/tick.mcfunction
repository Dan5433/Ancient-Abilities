# Prevent dropping ability items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ancient_abilities:{ability_item:true}}}}}]

# Prevent ability item pickup
execute as @a if items entity @s player.cursor *[custom_data~{ancient_abilities:{ability_item:true}}] run item replace entity @s player.cursor with air



# Abilities
# Cancel when not using item
execute as @a[advancements={ancient_abilities:right_click_ability_item=false},predicate=ancient_abilities:has_ability_timer] run function ancient_abilities:abilities/cancel
execute as @a[advancements={ancient_abilities:right_click_ability_item=true}] run advancement revoke @s only ancient_abilities:right_click_ability_item

# Warp Gate
# Teleport other entities to safe location
execute as @e[team=ancient_abilities.warped] at @s run function ancient_abilities:abilities/warp_gate/warp/tp_to_safe_location



# Passives

# Summoning
execute as @a[team=ancient_abilities.abilities.unique.summoning] at @s run team join ancient_abilities.abilities.unique.summoning @e[distance=..10,type=!#ancient_abilities:unfriendable]