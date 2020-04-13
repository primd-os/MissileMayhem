execute as @e[tag=clearMap] at @s run fill ~ ~ ~ ~31 ~31 ~31 minecraft:air
execute as @e[tag=clearMap] at @s run tp ~32 ~ ~
execute as @e[tag=clearMap] at @s run scoreboard players add @s clearX 32
execute as @e[tag=clearMap,scores={clearX=100..2000}] at @s run tp -100 ~ ~32
execute as @e[tag=clearMap,scores={clearX=100..2000}] at @s run scoreboard players add @s clearZ 32
execute as @e[tag=clearMap,scores={clearX=100..2000}] at @s run scoreboard players set @s clearX -100
execute as @e[tag=clearMap,scores={clearZ=200..2000}] at @s run tp ~ ~32 -200
execute as @e[tag=clearMap,scores={clearZ=200..2000}] at @s run scoreboard players add @e[tag=clearMap] clearY 32
execute as @e[tag=clearMap,scores={clearZ=200..2000}] at @s run scoreboard players set @s clearZ -200
execute as @e[tag=clearMap,scores={clearY=0..200}] at @s run function missilewars:maps/clear_map_loop
execute as @e[tag=clearMap,scores={clearY=200..200000}] at @s run kill @s