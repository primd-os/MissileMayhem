summon minecraft:area_effect_cloud -104 0 -104 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clearMap"]}
scoreboard players set @e[tag=clearMap] clearX -104
scoreboard players set @e[tag=clearMap] clearY 0
scoreboard players set @e[tag=clearMap] clearZ -104
execute as @e[tag=clearMap] at @s run function missilewars:maps/clear_map_loop