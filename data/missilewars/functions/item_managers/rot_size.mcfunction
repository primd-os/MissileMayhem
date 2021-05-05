execute store result score Temp m.Variables run scoreboard players get PosX2 m.Variables
execute if entity @s[scores={m.DirecToPlace=0}] run scoreboard players operation PosX2 m.Variables *= Flip m.Constants
execute if entity @s[scores={m.DirecToPlace=0}] run scoreboard players operation PosZ2 m.Variables *= Flip m.Constants
execute if entity @s[scores={m.DirecToPlace=1}] run scoreboard players operation PosX2 m.Variables = PosZ2 m.Variables
execute if entity @s[scores={m.DirecToPlace=1}] run scoreboard players operation PosZ2 m.Variables = Temp m.Variables
execute if entity @s[scores={m.DirecToPlace=1}] run scoreboard players operation PosZ2 m.Variables *= Flip m.Constants
execute if entity @s[scores={m.DirecToPlace=3}] run scoreboard players operation PosX2 m.Variables = PosZ2 m.Variables
execute if entity @s[scores={m.DirecToPlace=3}] run scoreboard players operation PosX2 m.Variables *= Flip m.Constants
execute if entity @s[scores={m.DirecToPlace=3}] run scoreboard players operation PosZ2 m.Variables = Temp m.Variables