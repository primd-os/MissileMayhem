execute unless score @s BlueWin matches 1 if score @s BlueScore >= WinningScore Constants run scoreboard players set @s PreBlueWin 1
execute unless score @s GreenWin matches 1 if score @s GreenScore >= WinningScore Constants run scoreboard players set @s PreGreenWin 1
execute unless score @s RedWin matches 1 if score @s RedScore >= WinningScore Constants run scoreboard players set @s PreRedWin 1
execute unless score @s BlackWin matches 1 if score @s BlackScore >= WinningScore Constants run scoreboard players set @s PreBlackWin 1
execute if score @s PreBlueWin matches 1 run scoreboard players set @s BlueWin 1
execute if score @s PreGreenWin matches 1 run scoreboard players set @s GreenWin 1
execute if score @s PreRedWin matches 1 run scoreboard players set @s RedWin 1
execute if score @s PreBlackWin matches 1 run scoreboard players set @s BlackWin 1

function missilewars:game_modes/4teams/end_game