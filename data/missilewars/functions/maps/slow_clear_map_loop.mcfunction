execute as @e[type=area_effect_cloud,tag=clearMap] at @s run fill 111 0 ~ -112 127 ~ air
execute as @e[type=area_effect_cloud,tag=clearMap] at @s run tp ~ ~ ~1
execute as @e[type=area_effect_cloud,tag=clearMap] at @s run scoreboard players add @s m.clearZ 1
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearZ=112..}] run kill @s