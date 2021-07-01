execute unless score @s m.GreenLoss matches 1 at @e[type=marker,tag=GreenBase,x=0] store success score @s m.PreGreenLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:green_terracotta replace air
execute unless score @s m.BlueLoss matches 1 at @e[type=marker,tag=BlueBase,x=0] store success score @s m.PreBlueLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:blue_terracotta replace air
execute unless score @s m.RedLoss matches 1 at @e[type=marker,tag=RedBase,x=0] store success score @s m.PreRedLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:red_terracotta replace air
execute unless score @s m.BlackLoss matches 1 at @e[type=marker,tag=BlackBase,x=0] store success score @s m.PreBlackLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:black_terracotta replace air
execute if score @s m.PreBlueLoss matches 1 run scoreboard players set @s m.BlueLoss 1
execute if score @s m.PreGreenLoss matches 1 run scoreboard players set @s m.GreenLoss 1
execute if score @s m.PreRedLoss matches 1 run scoreboard players set @s m.RedLoss 1
execute if score @s m.PreBlackLoss matches 1 run scoreboard players set @s m.BlackLoss 1

execute if score @s m.PreGreenLoss matches 1 run tellraw @a[x=0] {"text": "Green Eliminated!","color":"green"}
execute if score @s m.PreGreenLoss matches 1 as @a[x=0,team=Green] run function missilewars:start/join_spectators
execute if score @s m.PreGreenLoss matches 1 at @e[type=marker,x=0,tag=GreenBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace green_terracotta
execute if score @s m.PreGreenLoss matches 1 at @e[type=marker,x=0,tag=GreenBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s m.PreGreenLoss matches 1 at @e[type=marker,x=0,tag=GreenBase] run particle minecraft:explosion ~ 20 ~ 20 25 0 2 200 force

execute if score @s m.PreBlueLoss matches 1 run tellraw @a[x=0] {"text": "Blue Eliminated!","color":"blue"}
execute if score @s m.PreBlueLoss matches 1 as @a[x=0,team=Blue] run function missilewars:start/join_spectators
execute if score @s m.PreBlueLoss matches 1 at @e[type=marker,x=0,tag=BlueBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace black_terracotta
execute if score @s m.PreBlueLoss matches 1 at @e[type=marker,x=0,tag=BlueBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s m.PreBlueLoss matches 1 at @e[type=marker,x=0,tag=BlueBase] run particle minecraft:explosion ~ 20 ~ 20 25 0 2 200 force

execute if score @s m.PreRedLoss matches 1 run tellraw @a[x=0] {"text": "Red Eliminated!","color":"red"}
execute if score @s m.PreRedLoss matches 1 as @a[x=0,team=Red] run function missilewars:start/join_spectators
execute if score @s m.PreRedLoss matches 1 at @e[type=marker,x=0,tag=RedBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace red_terracotta
execute if score @s m.PreRedLoss matches 1 at @e[type=marker,x=0,tag=RedBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s m.PreRedLoss matches 1 at @e[type=marker,x=0,tag=RedBase] run particle minecraft:explosion ~ 20 ~ 0 20 25 2 200 force

execute if score @s m.PreBlackLoss matches 1 run tellraw @a[x=0] {"text": "Black Eliminated!","color":"black"}
execute if score @s m.PreBlackLoss matches 1 as @a[x=0,team=Purple] run function missilewars:start/join_spectators
execute if score @s m.PreBlackLoss matches 1 at @e[type=marker,x=0,tag=BlackBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace black_terracotta
execute if score @s m.PreBlackLoss matches 1 at @e[type=marker,x=0,tag=BlackBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s m.PreBlackLoss matches 1 at @e[type=marker,x=0,tag=BlackBase] run particle minecraft:explosion ~ 20 ~ 0 20 25 2 200 force

scoreboard players set @s m.DeadTeams 0
execute if score @s m.GreenLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.BlueLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.RedLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if score @s m.BlackLoss matches 1 run scoreboard players add @s m.DeadTeams 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.GreenLoss=0}] run scoreboard players set @s m.PreGreenWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.BlueLoss=0}] run scoreboard players set @s m.PreBlueWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.RedLoss=0}] run scoreboard players set @s m.PreRedWin 1
execute if entity @s[scores={m.GameState=1,m.DeadTeams=3,m.BlackLoss=0}] run scoreboard players set @s m.PreBlackWin 1

function missilewars:game_modes/4teams/end_game


scoreboard players set @s m.PreBlueLoss 0
scoreboard players set @s m.PreGreenLoss 0
scoreboard players set @s m.PreRedLoss 0
scoreboard players set @s m.PreBlackLoss 0