execute at @e[tag=GreenBase,x=0] store success score @s BlueWin run fill ~-25 0 ~ ~25 46 ~ minecraft:emerald_block replace air
execute at @e[tag=BlueBase,x=0] store success score @s GreenWin run fill ~-25 0 ~ ~25 46 ~ minecraft:diamond_block replace air
execute if score @s BlueWin matches 1 run function missilewars:end/end_game
execute if score @s GreenWin matches 1 run function missilewars:end/end_game