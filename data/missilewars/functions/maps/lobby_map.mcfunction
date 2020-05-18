summon minecraft:area_effect_cloud 0 0 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["BlueBase","NewBase"]}
summon minecraft:area_effect_cloud 0 0 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["GreenBase","NewBase"]}
scoreboard players set @e[tag=NewBase,tag=BlueBase] GameState 0
scoreboard players set @e[tag=NewBase,tag=BlueBase] Timer 200
scoreboard players set @e[tag=NewBase] Game 1
tag @e remove NewBase
function missilewars:maps/clear_map
execute at @e[tag=BlueBase] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase] run function missilewars:maps/green/map
execute at @e[tag=BlueBase] run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] run function missilewars:maps/green/basic_map