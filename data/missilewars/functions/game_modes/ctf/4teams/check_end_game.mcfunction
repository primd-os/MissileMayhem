execute unless score @s m.GreenLoss matches 1 if score @s m.GreenScore matches 0 unless entity @a[tag=carrier,team=Green,x=0] run scoreboard players set @s m.PreGreenLoss 1
execute unless score @s m.BlueLoss matches 1 if score @s m.BlueScore matches 0 unless entity @a[tag=carrier,team=Blue,x=0] run scoreboard players set @s m.PreBlueLoss 1
execute unless score @s m.RedLoss matches 1 if score @s m.RedScore matches 0 unless entity @a[tag=carrier,team=Red,x=0] run scoreboard players set @s m.PreRedLoss 1
execute unless score @s m.PurpleLoss matches 1 if score @s m.PurpleScore matches 0 unless entity @a[tag=carrier,team=Purple,x=0] run scoreboard players set @s m.PrePurpleLoss 1
execute if score @s m.PreBlueLoss matches 1 run scoreboard players set @s m.BlueLoss 1
execute if score @s m.PreGreenLoss matches 1 run scoreboard players set @s m.GreenLoss 1
execute if score @s m.PreRedLoss matches 1 run scoreboard players set @s m.RedLoss 1
execute if score @s m.PrePurpleLoss matches 1 run scoreboard players set @s m.PurpleLoss 1

execute if score @s m.PreGreenLoss matches 1 run tellraw @a[x=0] {"text": "Green Eliminated!","color":"green"}
execute if score @s m.PreGreenLoss matches 1 as @a[x=0,team=Green] run function missilewars:start/join_spectators

execute if score @s m.PreBlueLoss matches 1 run tellraw @a[x=0] {"text": "Blue Eliminated!","color":"blue"}
execute if score @s m.PreBlueLoss matches 1 as @a[x=0,team=Blue] run function missilewars:start/join_spectators

execute if score @s m.PreRedLoss matches 1 run tellraw @a[x=0] {"text": "Red Eliminated!","color":"red"}
execute if score @s m.PreRedLoss matches 1 as @a[x=0,team=Red] run function missilewars:start/join_spectators

execute if score @s m.PrePurpleLoss matches 1 run tellraw @a[x=0] {"text": "Purple Eliminated!","color": "dark_purple"}
execute if score @s m.PrePurpleLoss matches 1 as @a[x=0,team=Purple] run function missilewars:start/join_spectators

scoreboard players set @s m.DeadTeams 0
execute if score @s m.GreenLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.BlueLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.RedLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.PurpleLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.GreenLoss=0}] run scoreboard players set @s m.PreGreenWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.BlueLoss=0}] run scoreboard players set @s m.PreBlueWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.RedLoss=0}] run scoreboard players set @s m.PreRedWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.PurpleLoss=0}] run scoreboard players set @s m.PrePurpleWin 1

execute if score @s m.PreGreenWin matches 1 if entity @e[type=marker,tag=GreenBase,tag=m.PerfectCTFPossible,x=0] run advancement grant @a[x=0,team=Green] only missilewars:perfect_ctf
execute if score @s m.PreBlueWin matches 1 if entity @e[type=marker,tag=BlueBase,tag=m.PerfectCTFPossible,x=0] run advancement grant @a[x=0,team=Blue] only missilewars:perfect_ctf
execute if score @s m.PreRedWin matches 1 if entity @e[type=marker,tag=RedBase,tag=m.PerfectCTFPossible,x=0] run advancement grant @a[x=0,team=Red] only missilewars:perfect_ctf
execute if score @s m.PrePurpleWin matches 1 if entity @e[type=marker,tag=PurpleBase,tag=m.PerfectCTFPossible,x=0] run advancement grant @a[x=0,team=Purple] only missilewars:perfect_ctf

function missilewars:game_modes/4teams/end_game

scoreboard players set @s m.PreBlueLoss 0
scoreboard players set @s m.PreGreenLoss 0
scoreboard players set @s m.PreRedLoss 0
scoreboard players set @s m.PrePurpleLoss 0