scoreboard players set BluePlayers Constants 0
scoreboard players set GreenPlayers Constants 0
execute as @a[team=Blue,x=0] run scoreboard players add BluePlayers Constants 1
execute as @a[team=Green,x=0] run scoreboard players add GreenPlayers Constants 1
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Constants = GreenPlayers Constants
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Constants = BluePlayers Constants
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Constants *= Ten Constants
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Constants *= Ten Constants
execute if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation Magnitude Constants /= BluePlayers Constants
execute if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation Magnitude Constants /= GreenPlayers Constants
execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points += Magnitude Constants
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] BlueWin matches 1 run scoreboard players operation @s points -= Magnitude Constants
execute as @a[team=Blue,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points -= Magnitude Constants
execute as @a[team=Green,x=0] if score @e[tag=BlueBase,x=0,limit=1] GreenWin matches 1 run scoreboard players operation @s points += Magnitude Constants