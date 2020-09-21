execute unless score @s BlueWin matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] store success score @s PreBlueWin positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:green_terracotta replace air
execute unless score @s GreenWin matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] store success score @s PreGreenWin positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:blue_terracotta replace air
execute if score @s PreBlueWin matches 1 run scoreboard players set @s BlueWin 1
execute if score @s PreGreenWin matches 1 run scoreboard players set @s GreenWin 1
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 1 if score @s BlueWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 1 if score @s GreenWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 2 if score @s BlueWin matches 1 if score @s GreenWin matches 1 run function missilewars:end/tie_game
scoreboard players set @s PreBlueWin 0
scoreboard players set @s PreGreenWin 0