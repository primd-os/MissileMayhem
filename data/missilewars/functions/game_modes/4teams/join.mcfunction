function missilewars:game_modes/shared_join

scoreboard players set minTeam m.Variables -1
scoreboard players set minPlayers m.Variables 1000000000
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.BlueLoss matches 1 if score @s m.BlueMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 0
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.BlueLoss matches 1 if score @s m.BlueMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.BlueMembers
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.GreenLoss matches 1 if score @s m.GreenMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 1
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.GreenLoss matches 1 if score @s m.GreenMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.GreenMembers
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.RedLoss matches 1 if score @s m.RedMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 2
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.RedLoss matches 1 if score @s m.RedMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.RedMembers
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.PurpleLoss matches 1 if score @s m.PurpleMembers < minPlayers m.Variables run scoreboard players set minTeam m.Variables 3
execute as @e[type=marker,tag=GameMarker,x=0,limit=1] unless score @s m.PurpleLoss matches 1 if score @s m.PurpleMembers < minPlayers m.Variables run scoreboard players operation minPlayers m.Variables = @s m.PurpleMembers
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score minTeam m.Variables matches -1 run function missilewars:start/join_spectators
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score minTeam m.Variables matches 0 run function missilewars:start/join/blue
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score minTeam m.Variables matches 1 run function missilewars:start/join/green
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score minTeam m.Variables matches 2 run function missilewars:start/join/red
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score minTeam m.Variables matches 3 run function missilewars:start/join/purple

execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run function missilewars:start/join_spectators