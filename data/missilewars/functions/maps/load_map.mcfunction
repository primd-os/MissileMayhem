kill @e[type=area_effect_cloud,tag=BlueBase]
kill @e[type=area_effect_cloud,tag=GreenBase]
summon minecraft:area_effect_cloud 0 0 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["BlueBase"]}
summon minecraft:area_effect_cloud 0 0 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["GreenBase"]}
function missilewars:maps/clear_map
execute at @e[tag=BlueBase] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase] run function missilewars:maps/green/map

scoreboard players operation Map Constants = @r MapVote

execute at @e[tag=BlueBase] if score Map Constants matches 0 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 0 run function missilewars:maps/green/basic_map
execute at @e[tag=BlueBase] if score Map Constants matches 1 run function missilewars:maps/blue/no_walls
execute at @e[tag=GreenBase] if score Map Constants matches 1 run function missilewars:maps/green/no_walls
execute at @e[tag=BlueBase] if score Map Constants matches 2 run function missilewars:maps/blue/small_map
execute at @e[tag=GreenBase] if score Map Constants matches 2 run function missilewars:maps/green/small_map
execute at @e[tag=BlueBase] if score Map Constants matches 3 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 3 run function missilewars:maps/green/basic_map
execute if score Map Constants matches 3 run fill -25 0 ~-2 25 30 ~2 white_stained_glass
execute at @e[tag=BlueBase] if score Map Constants matches 4 run function missilewars:maps/blue/platforms
execute at @e[tag=GreenBase] if score Map Constants matches 4 run function missilewars:maps/green/platforms
execute at @e[tag=BlueBase] if score Map Constants matches 5 run function missilewars:maps/blue/weak_center
execute at @e[tag=GreenBase] if score Map Constants matches 5 run function missilewars:maps/green/weak_center
execute at @e[tag=BlueBase] if score Map Constants matches 6 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 6 run function missilewars:maps/green/basic_map
execute at @e[tag=BlueBase] if score Map Constants matches 6 run fill -2 30 ~-9 2 30 0 white_stained_glass
execute at @e[tag=GreenBase] if score Map Constants matches 6 run fill -2 30 ~9 2 30 0 white_stained_glass