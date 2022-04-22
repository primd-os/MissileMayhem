execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches ..1 run scoreboard players enable @a[x=0] leave
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 2.. run scoreboard players reset @a[x=0] leave
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 0 run scoreboard players enable @a[x=0] ChooseMissileSet
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run scoreboard players reset @a[x=0] ChooseMissileSet
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GameState matches 1.. run scoreboard players set @a[x=0] ChooseMissileSet -2