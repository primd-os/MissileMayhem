function missilewars:game_modes/queue
advancement grant @s only missilewars:root

execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run scoreboard players set @s hub.fallDmgPercent 0
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run scoreboard players set @s hub.fallDmgPercent 20
scoreboard players set @s m.DeathsInGame 0

scoreboard players operation @s m.Game = @e[type=marker,tag=GameMarker,x=0] m.Game

scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.RedMembers 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.PurpleMembers 0

execute as @a[team=m.Blue,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers += @s m.points
execute as @a[team=m.Green,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers += @s m.points
execute as @a[team=m.Red,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.RedMembers += @s m.points
execute as @a[team=m.Purple,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.PurpleMembers += @s m.points