scoreboard players operation WinningScore m.Variables = WinningScore m.Constants
scoreboard players add WinningScore m.Variables 1000
execute as @a[x=0,team=m.FFA] if score @s m.FFAScore >= WinningScore m.Variables run tag @s add m.WonFFA
execute if entity @a[x=0,tag=m.WonFFA] run scoreboard players set @a[x=0] m.RespawnTimer -1
execute if entity @a[x=0,tag=m.WonFFA] run scoreboard players set @a[x=0] m.FFAScore 0
execute if score @s m.GameState matches 1 if entity @a[x=0,tag=m.WonFFA] run function missilewars:game_modes/ffa/end_game