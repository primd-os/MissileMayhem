team leave @s
effect give @s instant_health 1 100
team join Lobby @s

tag @e[type=marker,distance=0..,tag=PracticeArea,tag=InUse,sort=nearest,limit=1] remove InUse

scoreboard players set @s m.Game 0

execute as @s run function missilewars:main/clear_inv
execute as @s in missilewars:lobby run tp 10 108.5 40