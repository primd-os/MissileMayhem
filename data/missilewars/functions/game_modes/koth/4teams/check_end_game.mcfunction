execute unless score @s BlueWin matches 1 if score @s BlueScore >= WinningScore Constants run scoreboard players set @s PreBlueWin 1
execute unless score @s GreenWin matches 1 if score @s GreenScore >= WinningScore Constants run scoreboard players set @s PreGreenWin 1
execute unless score @s RedWin matches 1 if score @s RedScore >= WinningScore Constants run scoreboard players set @s PreRedWin 1
execute unless score @s BlackWin matches 1 if score @s BlackScore >= WinningScore Constants run scoreboard players set @s PreBlackWin 1
execute if score @s PreBlueWin matches 1 run scoreboard players set @s BlueWin 1
execute if score @s PreGreenWin matches 1 run scoreboard players set @s GreenWin 1
execute if score @s PreRedWin matches 1 run scoreboard players set @s RedWin 1
execute if score @s PreBlackWin matches 1 run scoreboard players set @s BlackWin 1

execute if score @s PreGreenWin matches 1 run scoreboard players set @s GameState 2
execute if score @s PreBlueWin matches 1 run scoreboard players set @s GameState 2
execute if score @s PreRedWin matches 1 run scoreboard players set @s GameState 2
execute if score @s PreBlackWin matches 1 run scoreboard players set @s GameState 2
execute if entity @s[scores={GameState=2}] run schedule function missilewars:end/dimension_finish_game 10s
execute if score @s GameState matches 2 run scoreboard players set @s GameState 3
execute if entity @s[scores={PreGreenWin=1}] run title @a[x=0] times 10 50 10
execute if entity @s[scores={PreGreenWin=1}] run title @a[x=0] title {"text": "Green Wins!","color":"green"}
execute if entity @s[scores={PreBlueWin=1}] run title @a[x=0] title {"text": "Blue Wins!","color":"blue"}
execute if entity @s[scores={PreRedWin=1}] run title @a[x=0] title {"text": "Red Wins!","color":"red"}
execute if entity @s[scores={PreBlackWin=1}] run title @a[x=0] title {"text": "Black Wins!","color":"dark_gray"}
execute if entity @s[scores={PreGreenWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Green] ~ ~ ~ 1 2 1
execute if entity @s[scores={PreBlueWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Blue] ~ ~ ~ 1 2 1
execute if entity @s[scores={PreRedWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Red] ~ ~ ~ 1 2 1
execute if entity @s[scores={PreBlackWin=1}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Black] ~ ~ ~ 1 2 1

scoreboard players set @s PreBlueWin 0
scoreboard players set @s PreGreenWin 0
scoreboard players set @s PreRedWin 0
scoreboard players set @s PreBlackWin 0