execute as @e[type=area_effect_cloud,tag=clearMap] at @s run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air
execute as @e[type=area_effect_cloud,tag=clearMap] at @s run tp ~32 ~ ~
execute as @e[type=area_effect_cloud,tag=clearMap] at @s run scoreboard players add @s m.clearX 32
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearX=112..2000}] at @s run tp -112 ~ ~32
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearX=112..2000}] at @s run scoreboard players add @s m.clearZ 32
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearX=112..2000}] at @s run scoreboard players set @s m.clearX -112
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearZ=112..2000}] at @s run tp ~ ~32 -112
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearZ=112..2000}] at @s run scoreboard players add @e[type=area_effect_cloud,tag=clearMap] m.clearY 32
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearZ=112..2000}] at @s run scoreboard players set @s m.clearZ -112
execute as @e[type=area_effect_cloud,tag=clearMap,scores={m.clearY=128..}] run kill @s