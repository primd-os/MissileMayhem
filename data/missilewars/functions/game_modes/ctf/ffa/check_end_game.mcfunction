execute as @a[x=0,team=m.FFA,tag=!m.CTFDead,tag=!carrier] if score @s m.FFAScore matches 0 run tag @s add m.CTFDead

scoreboard players set AlivePlayerCount m.Variables 0
execute as @a[team=m.FFA,tag=!m.CTFDead,x=0] run scoreboard players add AlivePlayerCount m.Variables 1
execute if score AlivePlayerCount m.Variables matches 1 run tag @a[team=m.FFA,tag=!m.CTFDead,x=0] add m.WonFFA

execute as @a[x=0,tag=m.WonFFA] if entity @s[tag=m.PerfectCTFPossible] run advancement grant @s only missilewars:perfect_ctf

execute if entity @a[x=0,tag=m.WonFFA] run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if entity @a[x=0,tag=m.WonFFA] run tag @a[x=0] remove m.CTFDead
execute if score @s m.GameState matches 1 if entity @a[x=0,tag=m.WonFFA] run function missilewars:game_modes/ffa/end_game