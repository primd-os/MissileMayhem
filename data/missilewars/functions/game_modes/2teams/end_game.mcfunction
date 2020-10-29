scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GameState 2
title @a[x=0] times 10 50 10
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run title @a[x=0] title {"text":"Blue Wins!","color":"blue"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run title @a[x=0] title {"text":"Green Wins!","color":"green"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run advancement grant @a[x=0,team=Blue] only missilewars:win_game
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run advancement grant @a[x=0,team=Green] only missilewars:win_game
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run title @a[x=0,team=Blue] subtitle {"text":"Congratz!","color":"green"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run title @a[x=0,team=Green] subtitle {"text":"Congratz!","color":"green"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Blue] ~ ~ ~ 1 2 1
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Green] ~ ~ ~ 1 2 1
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run title @a[x=0,team=Green] subtitle {"text":"Better Luck Next Time","color":"red"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run title @a[x=0,team=Blue] subtitle {"text":"Better Luck Next Time","color":"red"}
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace green_terracotta
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace blue_terracotta
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run particle minecraft:explosion 0 25 ~ 20 25 0 2 200 force
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run particle minecraft:explosion 0 25 ~ 20 25 0 2 200 force
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run playsound minecraft:entity.generic.explode master @a[x=0] 0 25 ~ 100
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] run advancement grant @a[x=0,team=Green] only missilewars:2gud4u
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] run advancement grant @a[x=0,team=Blue] only missilewars:2gud4u
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] run advancement grant @a[x=0,team=Green] only missilewars:manipulation
execute if score @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] run advancement grant @a[x=0,team=Blue] only missilewars:manipulation
execute if entity @s[scores={m.GameState=2}] run scoreboard players operation @s m.EndTimer = EndTime m.Constants