execute at @e[tag=GreenBase,x=0] store success score @e[tag=BlueBase,x=0,limit=1] BlueWin run fill ~-25 0 ~ ~25 46 ~ minecraft:emerald_block replace air
execute at @e[tag=BlueBase,x=0] store success score @e[tag=BlueBase,x=0,limit=1] GreenWin run fill ~-25 0 ~ ~25 46 ~ minecraft:diamond_block replace air
execute at @e[tag=GreenBase,x=0] run fill ~-25 0 ~ ~25 46 ~ minecraft:emerald_block
execute at @e[tag=BlueBase,x=0] run fill ~-25 0 ~ ~25 46 ~ minecraft:diamond_block
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run function missilewars:end/end_game
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run function missilewars:end/end_game