execute unless score @s m.BlueWin matches 1 if score @s m.GreenScore matches 0 unless entity @a[tag=carrier,team=m.Green,x=0] run scoreboard players set @s m.PreBlueWin 1
execute unless score @s m.GreenWin matches 1 if score @s m.BlueScore matches 0 unless entity @a[tag=carrier,team=m.Blue,x=0] run scoreboard players set @s m.PreGreenWin 1
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.GameState matches 1 if score @s m.BlueWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @s m.GameState matches 1 if score @s m.GreenWin matches 1 run function missilewars:game_modes/2teams/end_game
scoreboard players set @s m.PreBlueWin 0
scoreboard players set @s m.PreGreenWin 0