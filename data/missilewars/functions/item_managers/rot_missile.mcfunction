execute store result score @s Temp run data get block ~ ~ ~ posX 1
execute if entity @s[scores={DirecToPlace=0}] store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posX
execute if entity @s[scores={DirecToPlace=0}] store result block ~ ~ ~ posZ int -1 run data get block ~ ~ ~ posZ
execute if entity @s[scores={DirecToPlace=0}] run data modify block ~ ~ ~ rotation set value CLOCKWISE_180
execute if entity @s[scores={DirecToPlace=1}] store result block ~ ~ ~ posX int 1 run data get block ~ ~ ~ posZ
execute if entity @s[scores={DirecToPlace=1}] store result block ~ ~ ~ posZ int -1 run scoreboard players get @s Temp
execute if entity @s[scores={DirecToPlace=1}] run data modify block ~ ~ ~ rotation set value COUNTERCLOCKWISE_90
execute if entity @s[scores={DirecToPlace=3}] store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posZ
execute if entity @s[scores={DirecToPlace=3}] store result block ~ ~ ~ posZ int 1 run scoreboard players get @s Temp
execute if entity @s[scores={DirecToPlace=3}] run data modify block ~ ~ ~ rotation set value CLOCKWISE_90