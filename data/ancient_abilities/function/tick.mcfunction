# Prevent dropping ability items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ancient_abilities:{ability_item:true}}}}}]

# Prevent ability item pickup
execute as @a if items entity @s player.cursor *[custom_data~{ancient_abilities:{ability_item:true}}] run item replace entity @s player.cursor with air



# Abilities

# Warp Gate
execute as @a[team=ancient_abilities.abilities.unique.warp_gate] unless items entity @s inventory.* *[custom_data~{ancient_abilities:{ability_item:true}}] unless items entity @s weapon.* *[custom_data~{ancient_abilities:{ability_item:true}}] unless items entity @s hotbar.* *[custom_data~{ancient_abilities:{ability_item:true}}] unless items entity @s player.crafting.* *[custom_data~{ancient_abilities:{ability_item:true}}] run function ancient_abilities:abilities/warp_gate/give_item
# Teleport other entities to safe location
execute as @e[team=ancient_abilities.warped] at @s run function ancient_abilities:abilities/warp_gate/warp/tp_to_safe_location



# Passives

# Summoning
execute as @a[team=ancient_abilities.abilities.unique.summoning] at @s run team join ancient_abilities.abilities.unique.summoning @e[distance=..10,type=!#ancient_abilities:unfriendable]