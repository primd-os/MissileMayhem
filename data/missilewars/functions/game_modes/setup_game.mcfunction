forceload add -200 -200 -100 200
forceload add -100 -200 0 200
forceload add 0 -200 100 200
forceload add 100 -200 200 200

summon minecraft:marker 0 255 0 {Tags: ["GameMarker", "m.NewGame"]}
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GameState 0
scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.Timer = Timer m.Constants
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.Game 1

execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1
execute as @e[type=marker,tag=GameMarker,tag=!m.NewGame] if score @s m.Game = @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game run scoreboard players add @e[type=marker,tag=GameMarker,x=0,limit=1] m.Game 1

tag @s add m.FoundGame