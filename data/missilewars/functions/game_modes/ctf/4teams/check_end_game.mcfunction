execute unless score @s GreenLoss matches 1 if score @s GreenScore matches 0 unless entity @a[tag=carrier,team=Green,x=0] run scoreboard players set @s PreGreenLoss 1
execute unless score @s BlueLoss matches 1 if score @s BlueScore matches 0 unless entity @a[tag=carrier,team=Blue,x=0] run scoreboard players set @s PreBlueLoss 1
execute unless score @s RedLoss matches 1 if score @s RedScore matches 0 unless entity @a[tag=carrier,team=Red,x=0] run scoreboard players set @s PreRedLoss 1
execute unless score @s BlackLoss matches 1 if score @s BlackScore matches 0 unless entity @a[tag=carrier,team=Black,x=0] run scoreboard players set @s PreBlackLoss 1
execute if score @s PreBlueLoss matches 1 run scoreboard players set @s BlueLoss 1
execute if score @s PreGreenLoss matches 1 run scoreboard players set @s GreenLoss 1
execute if score @s PreRedLoss matches 1 run scoreboard players set @s RedLoss 1
execute if score @s PreBlackLoss matches 1 run scoreboard players set @s BlackLoss 1

execute if score @s PreGreenLoss matches 1 run tellraw @a[x=0] {"text": "Green Eliminated!","color":"green"}
execute if score @s PreGreenLoss matches 1 as @a[x=0,team=Green] run function missilewars:start/join_spectators

execute if score @s PreBlueLoss matches 1 run tellraw @a[x=0] {"text": "Blue Eliminated!","color":"blue"}
execute if score @s PreBlueLoss matches 1 as @a[x=0,team=Blue] run function missilewars:start/join_spectators

execute if score @s PreRedLoss matches 1 run tellraw @a[x=0] {"text": "Red Eliminated!","color":"red"}
execute if score @s PreRedLoss matches 1 as @a[x=0,team=Red] run function missilewars:start/join_spectators

execute if score @s PreBlackLoss matches 1 run tellraw @a[x=0] {"text": "Black Eliminated!","color":"black"}
execute if score @s PreBlackLoss matches 1 as @a[x=0,team=Black] run function missilewars:start/join_spectators

scoreboard players set @s DeadTeams 0
execute if score @s GreenLoss matches 1 run scoreboard players add @s DeadTeams 1
execute if score @s BlueLoss matches 1 run scoreboard players add @s DeadTeams 1
execute if score @s RedLoss matches 1 run scoreboard players add @s DeadTeams 1
execute if score @s BlackLoss matches 1 run scoreboard players add @s DeadTeams 1
execute if entity @s[scores={GameState=1,DeadTeams=3,GreenLoss=0}] run scoreboard players set @s PreGreenWin 1
execute if entity @s[scores={GameState=1,DeadTeams=3,BlueLoss=0}] run scoreboard players set @s PreBlueWin 1
execute if entity @s[scores={GameState=1,DeadTeams=3,RedLoss=0}] run scoreboard players set @s PreRedWin 1
execute if entity @s[scores={GameState=1,DeadTeams=3,BlackLoss=0}] run scoreboard players set @s PreBlackWin 1

function missilewars:game_modes/4teams/end_game

scoreboard players set @s PreBlueLoss 0
scoreboard players set @s PreGreenLoss 0
scoreboard players set @s PreRedLoss 0
scoreboard players set @s PreBlackLoss 0