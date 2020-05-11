execute as @e[tag=clearMap] at @s run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air
# execute as @e[tag=clearMap] at @s run setblock ~ ~ ~ minecraft:coal_block
execute as @e[tag=clearMap] at @s run tp ~32 ~ ~
execute as @e[tag=clearMap] at @s run scoreboard players add @s clearX 32
execute as @e[tag=clearMap,scores={clearX=104..2000}] at @s run tp -104 ~ ~32
execute as @e[tag=clearMap,scores={clearX=104..2000}] at @s run scoreboard players add @s clearZ 32
execute as @e[tag=clearMap,scores={clearX=104..2000}] at @s run scoreboard players set @s clearX -104
execute as @e[tag=clearMap,scores={clearZ=104..2000}] at @s run tp ~ ~32 -104
execute as @e[tag=clearMap,scores={clearZ=104..2000}] at @s run scoreboard players add @e[tag=clearMap] clearY 32
execute as @e[tag=clearMap,scores={clearZ=104..2000}] at @s run scoreboard players set @s clearZ -104
execute as @e[tag=clearMap,scores={clearY=0..128}] at @s run function missilewars:maps/clear_map_loop
execute as @e[tag=clearMap,scores={clearY=128..200000}] at @s run kill @s