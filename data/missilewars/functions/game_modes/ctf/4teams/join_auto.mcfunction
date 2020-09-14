execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0] run function missilewars:game_modes/ctf/4teams/init_arena
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] RedMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlackMembers 0
execute as @a[team=Blue,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers 1
execute as @a[team=Green,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers 1
execute as @a[team=Red,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] RedMembers 1
execute as @a[team=Black,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlackMembers 1
scoreboard players set minTeam Variables -1
scoreboard players set minPlayers Variables 1000000000
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s BlueLoss matches 1 if score @s BlueMembers < minPlayers Variables run scoreboard players set minTeam Variables 0
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s BlueLoss matches 1 if score @s BlueMembers < minPlayers Variables run scoreboard players operation minPlayers Variables = @s BlueMembers
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s GreenLoss matches 1 if score @s GreenMembers < minPlayers Variables run scoreboard players set minTeam Variables 1
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s GreenLoss matches 1 if score @s GreenMembers < minPlayers Variables run scoreboard players operation minPlayers Variables = @s GreenMembers
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s RedLoss matches 1 if score @s RedMembers < minPlayers Variables run scoreboard players set minTeam Variables 2
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s RedLoss matches 1 if score @s RedMembers < minPlayers Variables run scoreboard players operation minPlayers Variables = @s RedMembers
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s BlackLoss matches 1 if score @s BlackMembers < minPlayers Variables run scoreboard players set minTeam Variables 3
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] unless score @s BlackLoss matches 1 if score @s BlackMembers < minPlayers Variables run scoreboard players operation minPlayers Variables = @s BlackMembers
execute if score minTeam Variables matches -1 run function missilewars:start/join_spectators
execute if score minTeam Variables matches 0 run function missilewars:start/join/blue
execute if score minTeam Variables matches 1 run function missilewars:start/join/green
execute if score minTeam Variables matches 2 run function missilewars:start/join/red
execute if score minTeam Variables matches 3 run function missilewars:start/join/black

function missilewars:game_modes/queue