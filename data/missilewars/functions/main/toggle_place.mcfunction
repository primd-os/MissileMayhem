execute if score @s DirectionPlace matches 1 run tag @s add Temp
execute if score @s DirectionPlace matches 0 run scoreboard players set @s DirectionPlace 1
execute if entity @s[tag=Temp] run scoreboard players set @s DirectionPlace 0
tag @s remove Temp
execute if score @s DirectionPlace matches 1 run title @s actionbar {"text": "Placement: Directional"}
execute if score @s DirectionPlace matches 0 run title @s actionbar {"text": "Placement: Fixed"}

execute as @s[scores={DirectionPlace=0},y_rotation=-45..45] run scoreboard players set @s DirecToPlace 0
execute as @s[scores={DirectionPlace=0},y_rotation=45..135] run scoreboard players set @s DirecToPlace 1
execute as @s[scores={DirectionPlace=0},y_rotation=135..180] run scoreboard players set @s DirecToPlace 2
execute as @s[scores={DirectionPlace=0},y_rotation=-180..-135] run scoreboard players set @s DirecToPlace 2
execute as @s[scores={DirectionPlace=0},y_rotation=-135..-45] run scoreboard players set @s DirecToPlace 3