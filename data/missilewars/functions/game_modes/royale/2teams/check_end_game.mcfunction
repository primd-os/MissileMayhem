execute unless score @s m.BlueWin matches 1 unless entity @a[team=Green,tag=!m.RoyaleDead,x=0] run scoreboard players set @s m.PreBlueWin 1
execute unless score @s m.GreenWin matches 1 unless entity @a[team=Blue,tag=!m.RoyaleDead,x=0] run scoreboard players set @s m.PreGreenWin 1
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.PreBlueWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @s m.PreGreenWin matches 1 run tag @a[x=0] remove m.RoyaleDead
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1 if score @s m.BlueWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1 if score @s m.GreenWin matches 1 run function missilewars:game_modes/2teams/end_game
scoreboard players set @s m.PreBlueWin 0
scoreboard players set @s m.PreGreenWin 0