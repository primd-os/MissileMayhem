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
execute if entity @s[scores={DeadTeams=3}] run scoreboard players set @s GameState 2
execute if entity @s[scores={DeadTeams=3}] run schedule function missilewars:end/dimension_finish_game 10s
execute if entity @s[scores={DeadTeams=3,GreenLoss=0}] run title @a[x=0] times 10 50 10
execute if entity @s[scores={DeadTeams=3,GreenLoss=0}] run title @a[x=0] title {"text": "Green Wins!","color":"green"}
execute if entity @s[scores={DeadTeams=3,BlueLoss=0}] run title @a[x=0] title {"text": "Blue Wins!","color":"blue"}
execute if entity @s[scores={DeadTeams=3,RedLoss=0}] run title @a[x=0] title {"text": "Red Wins!","color":"red"}
execute if entity @s[scores={DeadTeams=3,BlackLoss=0}] run title @a[x=0] title {"text": "Black Wins!","color":"dark_gray"}
execute if entity @s[scores={DeadTeams=3,GreenLoss=0}] run advancement grant @a[x=0,team=Green] only missilewars:win_game
execute if entity @s[scores={DeadTeams=3,BlueLoss=0}] run advancement grant @a[x=0,team=Blue] only missilewars:win_game
execute if entity @s[scores={DeadTeams=3,RedLoss=0}] run advancement grant @a[x=0,team=Red] only missilewars:win_game
execute if entity @s[scores={DeadTeams=3,BlackLoss=0}] run advancement grant @a[x=0,team=Black] only missilewars:win_game
execute if entity @s[scores={DeadTeams=3,GreenLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Green] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,BlueLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Blue] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,RedLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Red] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,BlackLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Black] ~ ~ ~ 1 2 1

scoreboard players set @s PreBlueLoss 0
scoreboard players set @s PreGreenLoss 0
scoreboard players set @s PreRedLoss 0
scoreboard players set @s PreBlackLoss 0