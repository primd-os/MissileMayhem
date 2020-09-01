execute unless score @s GreenLoss matches 1 at @e[tag=GreenBase,x=0] store success score @s PreGreenLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:green_terracotta replace air
execute unless score @s BlueLoss matches 1 at @e[tag=BlueBase,x=0] store success score @s PreBlueLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:blue_terracotta replace air
execute unless score @s RedLoss matches 1 at @e[tag=RedBase,x=0] store success score @s PreRedLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:red_terracotta replace air
execute unless score @s BlackLoss matches 1 at @e[tag=BlackBase,x=0] store success score @s PreBlackLoss positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:black_terracotta replace air
execute if score @s PreBlueLoss matches 1 run scoreboard players set @s BlueLoss 1
execute if score @s PreGreenLoss matches 1 run scoreboard players set @s GreenLoss 1
execute if score @s PreRedLoss matches 1 run scoreboard players set @s RedLoss 1
execute if score @s PreBlackLoss matches 1 run scoreboard players set @s BlackLoss 1

execute if score @s PreGreenLoss matches 1 run tellraw @a[x=0] {"text": "Green Eliminated!","color":"green"}
execute if score @s PreGreenLoss matches 1 as @a[x=0,team=Green] run function missilewars:start/join_spectators
execute if score @s PreGreenLoss matches 1 at @e[x=0,tag=GreenBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace green_terracotta
execute if score @s PreGreenLoss matches 1 at @e[x=0,tag=GreenBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s PreGreenLoss matches 1 at @e[x=0,tag=GreenBase] run particle minecraft:explosion ~ 20 ~ 20 25 0 2 200 force

execute if score @s PreBlueLoss matches 1 run tellraw @a[x=0] {"text": "Blue Eliminated!","color":"blue"}
execute if score @s PreBlueLoss matches 1 as @a[x=0,team=Blue] run function missilewars:start/join_spectators
execute if score @s PreBlueLoss matches 1 at @e[x=0,tag=BlueBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace black_terracotta
execute if score @s PreBlueLoss matches 1 at @e[x=0,tag=BlueBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s PreBlueLoss matches 1 at @e[x=0,tag=BlueBase] run particle minecraft:explosion ~ 20 ~ 20 25 0 2 200 force

execute if score @s PreRedLoss matches 1 run tellraw @a[x=0] {"text": "Red Eliminated!","color":"red"}
execute if score @s PreRedLoss matches 1 as @a[x=0,team=Red] run function missilewars:start/join_spectators
execute if score @s PreRedLoss matches 1 at @e[x=0,tag=RedBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace red_terracotta
execute if score @s PreRedLoss matches 1 at @e[x=0,tag=RedBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s PreRedLoss matches 1 at @e[x=0,tag=RedBase] run particle minecraft:explosion ~ 20 ~ 0 20 25 2 200 force

execute if score @s PreBlackLoss matches 1 run tellraw @a[x=0] {"text": "Black Eliminated!","color":"black"}
execute if score @s PreBlackLoss matches 1 as @a[x=0,team=Black] run function missilewars:start/join_spectators
execute if score @s PreBlackLoss matches 1 at @e[x=0,tag=BlackBase] positioned ^-20 ^ ^ run fill ~ 0 ~ ^40 ^-4 ^ minecraft:air replace black_terracotta
execute if score @s PreBlackLoss matches 1 at @e[x=0,tag=BlackBase] run playsound minecraft:entity.generic.explode master @a[x=0] ~ 25 ~ 100
execute if score @s PreBlackLoss matches 1 at @e[x=0,tag=BlackBase] run particle minecraft:explosion ~ 20 ~ 0 20 25 2 200 force

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
execute if entity @s[scores={DeadTeams=3,GreenLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Green] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,BlueLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Blue] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,RedLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Red] ~ ~ ~ 1 2 1
execute if entity @s[scores={DeadTeams=3,BlackLoss=0}] run playsound minecraft:ui.toast.challenge_complete block @a[x=0,team=Black] ~ ~ ~ 1 2 1

scoreboard players set @s PreBlueLoss 0
scoreboard players set @s PreGreenLoss 0
scoreboard players set @s PreRedLoss 0
scoreboard players set @s PreBlackLoss 0