summon minecraft:area_effect_cloud 0 0 -112 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["clearMap"]}
scoreboard players set @e[type=area_effect_cloud,tag=clearMap,x=0] m.clearZ -112
execute as @e[type=area_effect_cloud,tag=clearMap] at @s run function missilewars:maps/slow_clear_map_loop