execute unless score @s m.BlueWin matches 1 if score @s m.BlueScore >= WinningScore m.Constants run scoreboard players set @s m.PreBlueWin 1
execute unless score @s m.GreenWin matches 1 if score @s m.GreenScore >= WinningScore m.Constants run scoreboard players set @s m.PreGreenWin 1
execute unless score @s m.RedWin matches 1 if score @s m.RedScore >= WinningScore m.Constants run scoreboard players set @s m.PreRedWin 1
execute unless score @s m.BlackWin matches 1 if score @s m.BlackScore >= WinningScore m.Constants run scoreboard players set @s m.PreBlackWin 1
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @s m.PreRedWin matches 1 run scoreboard players set @s m.RedWin 1
execute if score @s m.PreBlackWin matches 1 run scoreboard players set @s m.BlackWin 1

function missilewars:game_modes/4teams/end_game