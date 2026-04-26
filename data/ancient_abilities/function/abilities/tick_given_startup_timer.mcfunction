scoreboard players remove @s ancient_abilities.given_ability_startup_timer 1

function ancient_abilities:actionbar_message {target:'@s',message:[{score:{name:'@s',objective:"ancient_abilities.given_ability_startup_timer"},color:red},{text:'s'}]}