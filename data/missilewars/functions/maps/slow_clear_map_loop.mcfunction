execute as @e[type=marker,tag=clearMap] at @s run fill 111 0 ~ -112 127 ~ air
execute as @e[type=marker,tag=clearMap] at @s run fill 111 0 ~ -112 127 ~-1 air
execute as @e[type=marker,tag=clearMap] at @s run tp ~ ~ ~1
execute as @e[type=marker,tag=clearMap] at @s run scoreboard players add @s m.clearZ 1
execute as @e[type=marker,tag=clearMap,scores={m.clearZ=112..}] run kill @s
