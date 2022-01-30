tag @s add m.ActivePlayer
execute as @e[type=marker,tag=m.FFABase,x=0] if score @s m.UUID1 = @a[x=0,tag=m.ActivePlayer,limit=1] m.UUID1 at @s as @a[x=0,tag=m.ActivePlayer,limit=1] positioned ~ ~1 ~ facing 0 52 0 run function hub:main/death/spawnpoint
execute as @e[type=marker,tag=m.FFABase,x=0] if score @s m.UUID1 = @a[x=0,tag=m.ActivePlayer,limit=1] m.UUID1 at @s as @a[x=0,tag=m.ActivePlayer,limit=1] positioned ~ ~1 ~ facing 0 52 0 run tp @s ~ ~ ~ ~ ~
tag @s remove m.ActivePlayer
execute unless entity @e[type=marker,tag=m.FFABase,x=0] at @e[type=marker,tag=m.FFAFullBase,x=0] positioned ~0 51 ~-1 facing 0 52 0 run function hub:main/death/spawnpoint
execute unless entity @e[type=marker,tag=m.FFABase,x=0] at @e[type=marker,tag=m.FFAFullBase,x=0] positioned ~0 51 ~-1 facing 0 52 0 run tp @s ~ ~ ~ ~ ~