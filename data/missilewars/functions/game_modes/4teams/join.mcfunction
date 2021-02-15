scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.RedMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlackMembers 0
execute as @a[team=Blue,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlueMembers += @s m.points
execute as @a[team=Green,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.GreenMembers += @s m.points
execute as @a[team=Red,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.RedMembers += @s m.points
execute as @a[team=Black,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] m.BlackMembers += @s m.points
scoreboard players set minTeam m.Variables -1
scoreboard players set minPlayers m.Variables 1000000000
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.BlueLoss matches 1 if score @s m.BlueMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 0
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.BlueLoss matches 1 if score @s m.BlueMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.BlueMembers
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.GreenLoss matches 1 if score @s m.GreenMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 1
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.GreenLoss matches 1 if score @s m.GreenMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.GreenMembers
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.RedLoss matches 1 if score @s m.RedMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 2
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.RedLoss matches 1 if score @s m.RedMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.RedMembers
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.BlackLoss matches 1 if score @s m.BlackMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 3
execute as @e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1] unless score @s m.BlackLoss matches 1 if score @s m.BlackMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.BlackMembers
execute if score minTeam m.Variables matches -1 run function missilewars:start/join_spectators
execute if score minTeam m.Variables matches 0 run function missilewars:start/join/blue
execute if score minTeam m.Variables matches 1 run function missilewars:start/join/green
execute if score minTeam m.Variables matches 2 run function missilewars:start/join/red
execute if score minTeam m.Variables matches 3 run function missilewars:start/join/black

function missilewars:game_modes/queue
advancement grant @s only missilewars:root