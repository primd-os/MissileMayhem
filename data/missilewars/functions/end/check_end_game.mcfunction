execute store success score BlueWin Constants run fill -25 0 -97 25 26 -97 minecraft:emerald_block
execute store success score GreenWin Constants run fill -25 0 97 25 26 97 minecraft:diamond_block
execute if score BlueWin Constants matches 1 run function missilewars:end/end_game
execute if score GreenWin Constants matches 1 run function missilewars:end/end_game