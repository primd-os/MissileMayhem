tag @s add m.NormalDead
scoreboard players set @s m.RespawnTimer 1000000
tellraw @a[x=0] [{"selector": "@s"},{"text": " has lost!"}]
particle minecraft:explosion ~ 25 ~ 0 25 0 2 200 force
playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
tag @s add m.ActivePlayer
execute as @e[type=marker,tag=m.FFABase] if score @s m.UUID1 = @a[x=0,tag=m.ActivePlayer,limit=1] m.UUID1 run kill @s
tag @s remove m.ActivePlayer