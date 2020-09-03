execute as @a[x=0] unless entity @s[scores={points=0..}] run scoreboard players set @s points 1000

scoreboard players set BluePoints Variables 0
scoreboard players set GreenPoints Variables 0
execute as @a[team=Blue,x=0] run scoreboard players operation BluePoints Variables += @s points
execute as @a[team=Green,x=0] run scoreboard players operation GreenPoints Variables += @s points

execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Variables = GreenPoints Variables
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Variables = BluePoints Variables
scoreboard players operation Magnitude Variables *= Hundred Constants
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Variables /= BluePoints Variables
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Variables /= GreenPoints Variables

scoreboard players set BluePlayers Variables 0
scoreboard players set GreenPlayers Variables 0
execute as @a[team=Blue,x=0] run scoreboard players add BluePlayers Variables 1
execute as @a[team=Green,x=0] run scoreboard players add GreenPlayers Variables 1

scoreboard players operation BlueMagnitude Variables = Magnitude Variables
scoreboard players operation GreenMagnitude Variables = Magnitude Variables
scoreboard players operation BlueMagnitude Variables /= BluePlayers Variables
scoreboard players operation GreenMagnitude Variables /= GreenPlayers Variables

execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points += BlueMagnitude Variables
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points -= GreenMagnitude Variables
execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points -= BlueMagnitude Variables
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points += GreenMagnitude Variables

execute as @a[x=0,scores={points=..100}] run scoreboard players set @s points 100