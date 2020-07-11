tag @s add ActivePlayer
execute unless entity @e[tag=BlueBase,x=0] run function missilewars:maps/lobby_map4
tag @s remove ActivePlayer
scoreboard players set @e[tag=BlueBase,x=0,limit=1] BlueMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] GreenMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] RedMembers 0
scoreboard players set @e[tag=BlueBase,x=0,limit=1] BlackMembers 0
execute as @a[team=Blue,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] BlueMembers 1
execute as @a[team=Green,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] GreenMembers 1
execute as @a[team=Red,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] RedMembers 1
execute as @a[team=Black,x=0] run scoreboard players add @e[tag=BlueBase,x=0,limit=1] BlackMembers 1
scoreboard players set minTeam Constants 0
scoreboard players operation minPlayers Constants = @e[tag=BlueBase,x=0,limit=1] BlueMembers
execute if score @e[tag=BlueBase,x=0,limit=1] GreenMembers < minPlayers Constants run scoreboard players set minTeam Constants 1
execute if score @e[tag=BlueBase,x=0,limit=1] GreenMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @e[tag=BlueBase,x=0,limit=1] GreenMembers
execute if score @e[tag=BlueBase,x=0,limit=1] RedMembers < minPlayers Constants run scoreboard players set minTeam Constants 2
execute if score @e[tag=BlueBase,x=0,limit=1] RedMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @e[tag=BlueBase,x=0,limit=1] RedMembers
execute if score @e[tag=BlueBase,x=0,limit=1] BlackMembers < minPlayers Constants run scoreboard players set minTeam Constants 3
execute if score @e[tag=BlueBase,x=0,limit=1] BlackMembers < minPlayers Constants run scoreboard players operation minPlayers Constants = @e[tag=BlueBase,x=0,limit=1] BlackMembers
execute if score minTeam Constants matches 0 run function missilewars:start/join/blue
execute if score minTeam Constants matches 1 run function missilewars:start/join/green
execute if score minTeam Constants matches 2 run function missilewars:start/join/red
execute if score minTeam Constants matches 3 run function missilewars:start/join/black