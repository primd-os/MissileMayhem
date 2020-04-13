execute at @e[tag=GreenBase] store success score BlueWin Constants run fill -25 0 ~ 25 26 ~ minecraft:emerald_block replace air
execute at @e[tag=BlueBase] store success score GreenWin Constants run fill -25 0 ~ 25 26 ~ minecraft:diamond_block replace air
execute at @e[tag=GreenBase] run fill -25 0 ~ 25 26 ~ minecraft:emerald_block
execute at @e[tag=BlueBase] run fill -25 0 ~ 25 26 ~ minecraft:diamond_block
execute if score BlueWin Constants matches 1 run function missilewars:end/end_game
execute if score GreenWin Constants matches 1 run function missilewars:end/end_game