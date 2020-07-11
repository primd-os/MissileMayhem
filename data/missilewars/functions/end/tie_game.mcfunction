scoreboard players set @e[tag=BlueBase,x=0] GameState 3
title @a[x=0] title {"text":"Tie!!!!","color":"gray"}
execute if score @s PreBlueWin matches 1 at @e[tag=GreenBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @s PreGreenWin matches 1 at @e[tag=BlueBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @s PreBlueWin matches 1 at @e[tag=GreenBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @s PreGreenWin matches 1 at @e[tag=BlueBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @s PreBlueWin matches 1 at @e[tag=GreenBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
execute if score @s PreGreenWin matches 1 at @e[tag=BlueBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100

schedule function missilewars:end/dimension_finish_game 10s replace