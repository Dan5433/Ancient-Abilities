# Abilities
execute as @a[team=ancient_abilities.abilities.unique.warp_gate] unless items entity @s inventory.* clock[custom_data~{ancient_abilities:{ability_item:true}}] unless items entity @s hotbar.* clock[custom_data~{ancient_abilities:{ability_item:true}}] unless items entity @s player.crafting.* clock[custom_data~{ancient_abilities:{ability_item:true}}] run function ancient_abilities:abilities/warp_gate/give_item

# Passives

# Summoning
execute as @a[team=ancient_abilities.abilities.unique.summoning] at @s run team join ancient_abilities.abilities.unique.summoning @e[distance=..10,type=!#ancient_abilities:unfriendable]