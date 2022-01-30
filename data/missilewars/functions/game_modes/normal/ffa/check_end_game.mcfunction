execute as @e[type=marker,tag=m.FFABase,x=0] at @s store success score @s m.Variables run fill ~ 0 ~ ~ ~-1 ~ minecraft:yellow_terracotta replace air

execute as @e[type=marker,tag=m.FFABase,x=0,scores={m.Variables=1..}] at @s as @a[x=0,team=m.FFA] if score @s m.UUID1 = @e[type=marker,tag=m.FFABase,sort=nearest,limit=1] m.UUID1 run function missilewars:game_modes/normal/ffa/lose

scoreboard players set AlivePlayerCount m.Variables 0
execute as @a[team=m.FFA,tag=!m.NormalDead,x=0] run scoreboard players add AlivePlayerCount m.Variables 1
execute if score AlivePlayerCount m.Variables matches 1 run tag @a[team=m.FFA,tag=!m.NormalDead,x=0] add m.WonFFA

execute if entity @a[x=0,tag=m.WonFFA] run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if entity @a[x=0,tag=m.WonFFA] run tag @a[x=0] remove m.NormalDead
execute if score @s m.GameState matches 1 if entity @a[x=0,tag=m.WonFFA] run function missilewars:game_modes/ffa/end_game