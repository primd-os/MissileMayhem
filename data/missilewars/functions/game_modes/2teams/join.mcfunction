function missilewars:game_modes/shared_join

execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers < @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers run function missilewars:start/join/blue
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueMembers >= @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenMembers run function missilewars:start/join/green
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run function missilewars:start/join_spectators