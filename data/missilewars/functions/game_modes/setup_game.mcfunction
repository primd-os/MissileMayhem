forceload add -200 -200 -100 200
forceload add -100 -200 0 200
forceload add 0 -200 100 200
forceload add 100 -200 200 200

summon minecraft:marker 0 255 0 {Tags: ["GameMarker"]}
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GameState 0
scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.Timer = Timer m.Constants
scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.Game = @s Game