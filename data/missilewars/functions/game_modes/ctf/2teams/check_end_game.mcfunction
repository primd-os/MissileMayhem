execute unless score @s BlueWin matches 1 if score @s GreenScore matches 0 unless entity @a[tag=carrier,team=Green,x=0] run scoreboard players set @s PreBlueWin 1
execute unless score @s GreenWin matches 1 if score @s BlueScore matches 0 unless entity @a[tag=carrier,team=Blue,x=0] run scoreboard players set @s PreGreenWin 1
execute if score @s PreBlueWin matches 1 run scoreboard players set @s BlueWin 1
execute if score @s PreGreenWin matches 1 run scoreboard players set @s GreenWin 1
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 1 if score @s BlueWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 1 if score @s GreenWin matches 1 run function missilewars:game_modes/2teams/end_game
scoreboard players set @s PreBlueWin 0
scoreboard players set @s PreGreenWin 0