scoreboard players set BluePlayers Variables 0
scoreboard players set GreenPlayers Variables 0
execute as @a[team=Blue,x=0] run scoreboard players add BluePlayers Variables 1
execute as @a[team=Green,x=0] run scoreboard players add GreenPlayers Variables 1
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Variables = GreenPlayers Variables
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Variables = BluePlayers Variables
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Variables *= Ten Constants
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Variables *= Ten Constants
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Variables /= BluePlayers Variables
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Variables /= GreenPlayers Variables
execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points += Magnitude Variables
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points -= Magnitude Variables
execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points -= Magnitude Variables
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points += Magnitude Variables