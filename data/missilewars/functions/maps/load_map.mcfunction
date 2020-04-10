kill @e[type=area_effect_cloud,tag=BlueBase]
kill @e[type=area_effect_cloud,tag=GreenBase]
summon minecraft:area_effect_cloud 0 0 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["BlueBase"]}
summon minecraft:area_effect_cloud 0 0 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["GreenBase"]}
function missilewars:maps/clear_map
execute at @e[tag=BlueBase] run function missilewars:maps/blue_map
execute at @e[tag=GreenBase] run function missilewars:maps/green_map

execute at @e[tag=BlueBase] if score Map Constants matches 0 run function missilewars:maps/blue_basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 0 run function missilewars:maps/green_basic_map
execute at @e[tag=BlueBase] if score Map Constants matches 2 run function missilewars:maps/blue_small_map
execute at @e[tag=GreenBase] if score Map Constants matches 2 run function missilewars:maps/green_small_map