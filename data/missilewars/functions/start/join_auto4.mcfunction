execute unless entity @e[tag=BlueBase,x=0] run function missilewars:maps/lobby_map4
scoreboard players set @e[tag=BlueBase,x=0,limit=1] BlueMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] GreenMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] RedMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] BlackMembers 0
execute as @a[team=Blue,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] BlueMembers 1
execute as @a[team=Green,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] GreenMembers 1
execute as @a[team=Red,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] RedMembers 1
execute as @a[team=Black,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] BlackMembers 1
scoreboard players set minTeam Constants -1
scoreboard players set minPlayers Constants 1000000000
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s BlueLoss matches 1 if score @s BlueMembers < minPlayers Constants run scoreboard players set minTeam Constants 0
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s BlueLoss matches 1 if score @s BlueMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @s BlueMembers
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s GreenLoss matches 1 if score @s GreenMembers < minPlayers Constants run scoreboard players set minTeam Constants 1
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s GreenLoss matches 1 if score @s GreenMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @s GreenMembers
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s RedLoss matches 1 if score @s RedMembers < minPlayers Constants run scoreboard players set minTeam Constants 2
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s RedLoss matches 1 if score @s RedMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @s RedMembers
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s BlackLoss matches 1 if score @s BlackMembers < minPlayers Constants run scoreboard players set minTeam Constants 3
execute as @e[tag=BlueBase,x=0,limit=1] unless score @s BlackLoss matches 1 if score @s BlackMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @s BlackMembers
execute if score minTeam Constants matches -1 run function missilewars:start/join_spectators
execute if score minTeam Constants matches 0 run function missilewars:start/join/blue
execute if score minTeam Constants matches 1 run function missilewars:start/join/green
execute if score minTeam Constants matches 2 run function missilewars:start/join/red
execute if score minTeam Constants matches 3 run function missilewars:start/join/black