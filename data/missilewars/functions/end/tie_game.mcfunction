scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GameState 3
title @a[x=0] title {"text":"Tie!!!!","color":"gray"}
execute if score @s m.PreBlueWin matches 1 at @e[type=marker,tag=GreenBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @s m.PreGreenWin matches 1 at @e[type=marker,tag=BlueBase,x=0] run fill -25 0 ~ 25 46 ~ minecraft:air
execute if score @s m.PreBlueWin matches 1 at @e[type=marker,tag=GreenBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @s m.PreGreenWin matches 1 at @e[type=marker,tag=BlueBase,x=0] run particle minecraft:explosion 0 25 ~ 25 25 0 2 200 force
execute if score @s m.PreBlueWin matches 1 at @e[type=marker,tag=GreenBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
execute if score @s m.PreGreenWin matches 1 at @e[type=marker,tag=BlueBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100

execute if entity @e[type=marker,tag=GameMarker,x=0] run scoreboard players operation @s m.EndTimer = EndTime m.Constants