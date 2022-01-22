execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches ..1 run scoreboard players enable @a[x=0] Leave
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 2.. run scoreboard players reset @a[x=0] Leave
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches ..1 run scoreboard players enable @a[x=0] JoinSpectators
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 2.. run scoreboard players reset @a[x=0] JoinSpectators
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] JoinPlayers
execute unless score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run scoreboard players reset @a[x=0] JoinPlayers
scoreboard players reset @a[x=0] ChooseMissileSet