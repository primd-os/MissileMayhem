summon minecraft:marker 0 0 -111 {Tags: ["clearMap"]}
scoreboard players set @e[type=marker,tag=clearMap,x=0] m.clearZ -111
execute as @e[type=marker,tag=clearMap] at @s run function missilewars:maps/slow_clear_map_loop
