scoreboard players set BluePlayers Constants 0
scoreboard players set GreenPlayers Constants 0
execute as @a[team=Blue] run scoreboard players add BluePlayers Constants 1
execute as @a[team=Green] run scoreboard players add GreenPlayers Constants 1
execute if score BlueWin Constants matches 1 run scoreboard players operation Magnitude Constants = GreenPlayers Constants
execute if score GreenWin Constants matches 1 run scoreboard players operation Magnitude Constants = BluePlayers Constants
execute if score BlueWin Constants matches 1 run scoreboard players operation Magnitude Constants *= Ten Constants
execute if score GreenWin Constants matches 1 run scoreboard players operation Magnitude Constants *= Ten Constants
execute if score BlueWin Constants matches 1 run scoreboard players operation Magnitude Constants /= BluePlayers Constants
execute if score GreenWin Constants matches 1 run scoreboard players operation Magnitude Constants /= GreenPlayers Constants
execute as @a[team=Blue] if score BlueWin Constants matches 1 run scoreboard players operation @s points += Magnitude Constants
execute as @a[team=Green] if score BlueWin Constants matches 1 run scoreboard players operation @s points -= Magnitude Constants
execute as @a[team=Blue] if score GreenWin Constants matches 1 run scoreboard players operation @s points -= Magnitude Constants
execute as @a[team=Green] if score GreenWin Constants matches 1 run scoreboard players operation @s points += Magnitude Constants