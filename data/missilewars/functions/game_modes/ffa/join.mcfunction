function missilewars:game_modes/shared_join

execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run function missilewars:start/join/ffa
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run function missilewars:start/join_spectators