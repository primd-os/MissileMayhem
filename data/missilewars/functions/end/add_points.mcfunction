scoreboard players set BluePoints m.Variables 0
scoreboard players set GreenPoints m.Variables 0
execute as @a[team=Blue,x=0] run scoreboard players operation BluePoints m.Variables += @s m.points
execute as @a[team=Green,x=0] run scoreboard players operation GreenPoints m.Variables += @s m.points
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run scoreboard players operation X m.Variables = GreenPoints m.Variables
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run scoreboard players operation X m.Variables = BluePoints m.Variables
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run scoreboard players operation X m.Variables -= BluePoints m.Variables
execute if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run scoreboard players operation X m.Variables -= GreenPoints m.Variables

scoreboard players operation Magnitude m.Variables = X m.Variables
scoreboard players operation Magnitude m.Variables *= PointScale m.Constants

execute if score X m.Variables matches -2147483648..0 run scoreboard players operation X m.Variables *= Flip m.Constants
scoreboard players operation X m.Variables += Flatness m.Constants
scoreboard players operation Magnitude m.Variables /= X m.Variables
scoreboard players operation Magnitude m.Variables += PointScale m.Constants

scoreboard players set BluePlayers m.Variables 0
scoreboard players set GreenPlayers m.Variables 0
execute as @a[team=Blue,x=0] run scoreboard players add BluePlayers m.Variables 1
execute as @a[team=Green,x=0] run scoreboard players add GreenPlayers m.Variables 1

scoreboard players operation BlueMagnitude m.Variables = Magnitude m.Variables
scoreboard players operation GreenMagnitude m.Variables = Magnitude m.Variables
scoreboard players operation BlueMagnitude m.Variables /= BluePlayers m.Variables
scoreboard players operation GreenMagnitude m.Variables /= GreenPlayers m.Variables

execute as @a[team=Blue,x=0] if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run scoreboard players operation @s m.points += BlueMagnitude m.Variables
execute as @a[team=Green,x=0] if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.BlueWin matches 1 run scoreboard players operation @s m.points -= GreenMagnitude m.Variables
execute as @a[team=Blue,x=0] if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run scoreboard players operation @s m.points -= BlueMagnitude m.Variables
execute as @a[team=Green,x=0] if score @e[type=marker,tag=GameMarker,x=0,limit=1] m.GreenWin matches 1 run scoreboard players operation @s m.points += GreenMagnitude m.Variables