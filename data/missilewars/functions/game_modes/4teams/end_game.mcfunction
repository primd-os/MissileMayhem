execute if score @s m.PreGreenWin matches 1 run scoreboard players set @s m.GameState 2
execute if score @s m.PreBlueWin matches 1 run scoreboard players set @s m.GameState 2
execute if score @s m.PreRedWin matches 1 run scoreboard players set @s m.GameState 2
execute if score @s m.PreBlackWin matches 1 run scoreboard players set @s m.GameState 2
execute if entity @s[scores={m.GameState=2}] run scoreboard players operation @s m.EndTimer = EndTime m.Constants
execute if entity @s[scores={m.GameState=2}] run title @a[x=0] times 10 50 10
execute if score @s m.GameState matches 2 run scoreboard players set @s m.GameState 3
execute if entity @s[scores={m.PreGreenWin=1}] run title @a[x=0] title {"text": "Green Wins!","color":"green"}
execute if entity @s[scores={m.PreBlueWin=1}] run title @a[x=0] title {"text": "Blue Wins!","color":"blue"}
execute if entity @s[scores={m.PreRedWin=1}] run title @a[x=0] title {"text": "Red Wins!","color":"red"}
execute if entity @s[scores={m.PreBlackWin=1}] run title @a[x=0] title {"text": "Black Wins!","color":"dark_gray"}
execute if entity @s[scores={m.PreGreenWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Green] ~ ~ ~ 1 2 1
execute if entity @s[scores={m.PreBlueWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Blue] ~ ~ ~ 1 2 1
execute if entity @s[scores={m.PreRedWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Red] ~ ~ ~ 1 2 1
execute if entity @s[scores={m.PreBlackWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Black] ~ ~ ~ 1 2 1
execute if entity @s[scores={m.PreGreenWin=1}] if entity @a[x=0,team=!Spectator,team=!Green] run advancement grant @a[x=0,team=Green] only missilewars:win_game
execute if entity @s[scores={m.PreBlueWin=1}] if entity @a[x=0,team=!Spectator,team=!Blue] run advancement grant @a[x=0,team=Blue] only missilewars:win_game
execute if entity @s[scores={m.PreRedWin=1}] if entity @a[x=0,team=!Spectator,team=!Red] run advancement grant @a[x=0,team=Red] only missilewars:win_game
execute if entity @s[scores={m.PreBlackWin=1}] if entity @a[x=0,team=!Spectator,team=!Black] run advancement grant @a[x=0,team=Black] only missilewars:win_game
execute if entity @s[scores={m.PreGreenWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] if entity @a[x=0,team=!Spectator,team=!Green] run advancement grant @a[x=0,team=Green] only missilewars:2gud4u
execute if entity @s[scores={m.PreBlueWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] if entity @a[x=0,team=!Spectator,team=!Blue] run advancement grant @a[x=0,team=Blue] only missilewars:2gud4u
execute if entity @s[scores={m.PreRedWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] if entity @a[x=0,team=!Spectator,team=!Red] run advancement grant @a[x=0,team=Red] only missilewars:2gud4u
execute if entity @s[scores={m.PreBlackWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-900..}] if entity @a[x=0,team=!Spectator,team=!Black] run advancement grant @a[x=0,team=Black] only missilewars:2gud4u
execute if entity @s[scores={m.PreGreenWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] if entity @a[x=0,team=!Spectator,team=!Green] run advancement grant @a[x=0,team=Green] only missilewars:manipulation
execute if entity @s[scores={m.PreBlueWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] if entity @a[x=0,team=!Spectator,team=!Blue] run advancement grant @a[x=0,team=Blue] only missilewars:manipulation
execute if entity @s[scores={m.PreRedWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] if entity @a[x=0,team=!Spectator,team=!Red] run advancement grant @a[x=0,team=Red] only missilewars:manipulation
execute if entity @s[scores={m.PreBlackWin=1}] if entity @e[type=area_effect_cloud,tag=GameMarker,x=0,scores={m.Timer=-200..}] if entity @a[x=0,team=!Spectator,team=!Black] run advancement grant @a[x=0,team=Black] only missilewars:manipulation

scoreboard players set @s m.PreBlueWin 0
scoreboard players set @s m.PreGreenWin 0
scoreboard players set @s m.PreRedWin 0
scoreboard players set @s m.PreBlackWin 0