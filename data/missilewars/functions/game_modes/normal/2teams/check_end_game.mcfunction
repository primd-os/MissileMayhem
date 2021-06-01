execute unless score @s m.BlueWin matches 1 at @e[type=marker,tag=GreenBase,x=0] store success score @s m.PreBlueWin positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:green_terracotta replace air
execute unless score @s m.GreenWin matches 1 at @e[type=marker,tag=BlueBase,x=0] store success score @s m.PreGreenWin positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:blue_terracotta replace air
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.BlueWin 1
execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GreenWin 1
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1 if score @s m.BlueWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1 if score @s m.GreenWin matches 1 run function missilewars:game_modes/2teams/end_game
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 2 if score @s m.BlueWin matches 1 if score @s m.GreenWin matches 1 run function missilewars:end/tie_game
scoreboard players set @s m.PreBlueWin 0
scoreboard players set @s m.PreGreenWin 0