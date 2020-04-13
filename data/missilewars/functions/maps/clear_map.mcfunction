summon minecraft:area_effect_cloud -100 0 -200 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clearMap"]}
scoreboard players set @e[tag=clearMap] clearX -100
scoreboard players set @e[tag=clearMap] clearY 0
scoreboard players set @e[tag=clearMap] clearZ -200
execute as @e[tag=clearMap] at @s run function missilewars:maps/clear_map_loop