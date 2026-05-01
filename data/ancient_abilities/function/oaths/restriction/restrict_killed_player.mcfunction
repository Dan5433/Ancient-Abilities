advancement revoke @s only ancient_abilities:killed_by_restriction
execute as @s[tag=!ancient_abilities.has_ability] run return fail
execute as @s[tag=ancient_abilities.restricted] run return fail

tag @s add ancient_abilities.restricted
playsound item.mace.smash_ground player @s ~ ~ ~
function ancient_abilities:message {target:'@s',message:{text:"You have been restricted!",color:red}}

execute on attacker run function ancient_abilities:player_database/merge_in_with_existing
data modify storage ancient_abilities:player_database in.restricted append from entity @s UUID

execute on attacker run function ancient_abilities:player_database/set_in