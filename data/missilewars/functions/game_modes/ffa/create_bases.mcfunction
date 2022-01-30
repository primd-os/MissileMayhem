spreadplayers 0 0 20 90 under 130 false @a[x=0,team=m.FFA]
execute as @a[x=0,team=m.FFA] at @s run summon marker ~ 50 ~ {Tags:[m.FFABase]} 
execute as @a[x=0,team=m.FFA] at @s positioned ~ 50 ~ run scoreboard players operation @e[tag=m.FFABase,sort=nearest,distance=..10] m.UUID1 = @s m.UUID1