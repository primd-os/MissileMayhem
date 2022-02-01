clear @s
summon marker ~ ~ ~ {Tags:["m.GameFinder"]}
execute as @e[type=marker,x=0,tag=m.GameFinder] store result score YCoordFinal m.Variables run data get entity @e[type=marker,x=0,tag=m.GameFinder,limit=1] Pos[1]
execute as @e[type=marker,x=0,tag=m.GameFinder] store result score ZCoordFinal m.Variables run data get entity @e[type=marker,x=0,tag=m.GameFinder,limit=1] Pos[2]
scoreboard players remove ZCoordFinal m.Variables 39
scoreboard players remove YCoordFinal m.Variables 106
scoreboard players operation ZCoordFinal m.Variables *= Flip m.Constants
scoreboard players operation YCoordFinal m.Variables *= Flip m.Constants
scoreboard players operation YCoordFinal m.Variables *= signLength m.Constants
scoreboard players operation @s m.Game = YCoordFinal m.Variables
scoreboard players operation @s m.Game += ZCoordFinal m.Variables
scoreboard players add @s m.Game 1
kill @e[type=marker,x=0,tag=m.GameFinder]

tag @s add m.ActivePlayer
execute as @e[type=marker,tag=GameMarker] if score @s m.Game = @a[x=0,tag=m.ActivePlayer,limit=1] m.Game as @s[nbt={data:{team_type:"2 Teams"}}] at @s as @a[tag=m.ActivePlayer] run function missilewars:game_modes/2teams/join
execute as @e[type=marker,tag=GameMarker] if score @s m.Game = @a[x=0,tag=m.ActivePlayer,limit=1] m.Game as @s[nbt={data:{team_type:"4 Teams"}}] at @s as @a[tag=m.ActivePlayer] run function missilewars:game_modes/4teams/join
execute as @e[type=marker,tag=GameMarker] if score @s m.Game = @a[x=0,tag=m.ActivePlayer,limit=1] m.Game as @s[nbt={data:{team_type:"FFA"}}] at @s as @a[tag=m.ActivePlayer] run function missilewars:game_modes/ffa/join
tag @s remove m.ActivePlayer