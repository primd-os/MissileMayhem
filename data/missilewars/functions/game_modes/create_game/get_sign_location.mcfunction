execute in missilewars:lobby run summon marker 0 255 0 {Tags:["m.SignPlacer"]}
scoreboard players operation ZCoord m.Variables = @s m.Game
scoreboard players remove ZCoord m.Variables 1
scoreboard players operation ZCoord m.Variables %= signLength m.Constants
scoreboard players operation YCoord m.Variables = @s m.Game
scoreboard players remove YCoord m.Variables 1
scoreboard players operation YCoord m.Variables /= signLength m.Constants
scoreboard players set ZCoordFinal m.Variables 39
scoreboard players set YCoordFinal m.Variables 106
scoreboard players operation ZCoordFinal m.Variables -= ZCoord m.Variables
scoreboard players operation YCoordFinal m.Variables -= YCoord m.Variables
execute in missilewars:lobby as @e[type=marker,x=0,tag=m.SignPlacer] store result entity @s Pos[1] double 1 run scoreboard players get YCoordFinal m.Variables
execute in missilewars:lobby as @e[type=marker,x=0,tag=m.SignPlacer] store result entity @s Pos[2] double 1 run scoreboard players get ZCoordFinal m.Variables