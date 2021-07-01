scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers 0
execute as @a[team=Blue,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers += @s m.points
execute as @a[team=Green,x=0] run scoreboard players operation @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers += @s m.points
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers < @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers run function missilewars:start/join/blue
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers >= @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers run function missilewars:start/join/green

function missilewars:game_modes/queue
advancement grant @s only missilewars:root

scoreboard players set @s m.DeathsInGame 0