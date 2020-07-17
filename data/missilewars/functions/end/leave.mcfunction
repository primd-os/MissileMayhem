team leave @s
effect give @s instant_health 1 100
team join Lobby @s

scoreboard players set @s Game 0

execute as @s run function missilewars:main/clear_inv
execute as @s in missilewars:lobby run tp 0 100 0