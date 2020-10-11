execute if score @s m.DirectionPlace matches 1 run tag @s add Temp
execute if score @s m.DirectionPlace matches 0 run scoreboard players set @s m.DirectionPlace 1
execute if entity @s[tag=Temp] run scoreboard players set @s m.DirectionPlace 0
tag @s remove Temp

execute as @s[scores={m.DirectionPlace=0},y_rotation=-45..45] run scoreboard players set @s m.DirecToPlace 0
execute as @s[scores={m.DirectionPlace=0},y_rotation=45..135] run scoreboard players set @s m.DirecToPlace 1
execute as @s[scores={m.DirectionPlace=0},y_rotation=135..180] run scoreboard players set @s m.DirecToPlace 2
execute as @s[scores={m.DirectionPlace=0},y_rotation=-180..-135] run scoreboard players set @s m.DirecToPlace 2
execute as @s[scores={m.DirectionPlace=0},y_rotation=-135..-45] run scoreboard players set @s m.DirecToPlace 3

scoreboard players set @s m.dropItem 0