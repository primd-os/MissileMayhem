forceload remove -200 -200 -100 200
forceload remove -100 -200 0 200
forceload remove 0 -200 100 200
forceload remove 100 -200 200 200

execute in missilewars:lobby run summon marker 0 255 0 {Tags:["m.SignPlacer"]}
scoreboard players operation ZCoord m.Variables = @s m.Game
scoreboard players operation ZCoord m.Variables %= signLength m.Constants
scoreboard players operation YCoord m.Variables = @s m.Game
scoreboard players operation YCoord m.Variables /= signLength m.Constants
scoreboard players set ZCoordFinal m.Variables 40
scoreboard players set YCoordFinal m.Variables 106
scoreboard players operation ZCoordFinal m.Variables -= ZCoord m.Variables
scoreboard players operation YCoordFinal m.Variables -= YCoord m.Variables
execute in missilewars:lobby as @e[type=marker,x=0,tag=m.SignPlacer] store result entity @s Pos[1] double 1 run scoreboard players get YCoordFinal m.Variables
execute in missilewars:lobby as @e[type=marker,x=0,tag=m.SignPlacer] store result entity @s Pos[2] double 1 run scoreboard players get ZCoordFinal m.Variables

execute in missilewars:lobby at @e[type=marker,x=0,tag=m.SignPlacer] run setblock -14 ~ ~ minecraft:air
execute in missilewars:lobby run kill @e[type=marker,x=0,tag=m.SignPlacer]

kill @e[x=0]