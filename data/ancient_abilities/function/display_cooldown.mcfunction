$scoreboard players operation $timer_seconds ancient_abilities.temp = @s $(score)
scoreboard players operation $timer_minutes ancient_abilities.temp = $timer_seconds ancient_abilities.temp


scoreboard players operation $timer_minutes ancient_abilities.temp /= $seconds_in_minute ancient_abilities.constants

scoreboard players operation $timer_seconds ancient_abilities.temp %= $seconds_in_minute ancient_abilities.constants


$execute if score $timer_minutes ancient_abilities.temp matches 0 run return run title @s actionbar [{text:"On Cooldown: ",color:red},{score:{name:"@s",objective:"$(score)"}},{text:"s"}]

title @s actionbar [{text:"On Cooldown: ",color:red},{score:{name:"$timer_minutes",objective:"ancient_abilities.temp"}},{text:"m "},{score:{name:"$timer_seconds",objective:"ancient_abilities.temp"}},{text:"s"}]