execute as @e[tag=clearMap] at @s run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air
# execute as @e[tag=clearMap] at @s run setblock ~ ~ ~ minecraft:coal_block
execute as @e[tag=clearMap] at @s run tp ~32 ~ ~
execute as @e[tag=clearMap] at @s run scoreboard players add @s clearX 32
execute as @e[tag=clearMap,scores={clearX=112..2000}] at @s run tp -112 ~ ~32
execute as @e[tag=clearMap,scores={clearX=112..2000}] at @s run scoreboard players add @s clearZ 32
execute as @e[tag=clearMap,scores={clearX=112..2000}] at @s run scoreboard players set @s clearX -112
execute as @e[tag=clearMap,scores={clearZ=112..2000}] at @s run tp ~ ~32 -112
execute as @e[tag=clearMap,scores={clearZ=112..2000}] at @s run scoreboard players add @e[tag=clearMap] clearY 32
execute as @e[tag=clearMap,scores={clearZ=112..2000}] at @s run scoreboard players set @s clearZ -112
execute as @e[tag=clearMap,scores={clearY=0..127}] at @s run function missilewars:maps/clear_map_loop