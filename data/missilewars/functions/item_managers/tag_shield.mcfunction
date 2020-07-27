tag @s add Active
execute as @s[scores={DirectionPlace=1},y_rotation=-45..45] run scoreboard players set @s DirecToPlace 0
execute as @s[scores={DirectionPlace=1},y_rotation=45..135] run scoreboard players set @s DirecToPlace 1
execute as @s[scores={DirectionPlace=1},y_rotation=135..180] run scoreboard players set @s DirecToPlace 2
execute as @s[scores={DirectionPlace=1},y_rotation=-180..-135] run scoreboard players set @s DirecToPlace 2
execute as @s[scores={DirectionPlace=1},y_rotation=-135..-45] run scoreboard players set @s DirecToPlace 3
execute as @e[type=minecraft:snowball,scores={snowballTime=1}] if score @s UUID1 = @a[tag=Active,limit=1] UUID1 run scoreboard players operation @s DirecToPlace = @a[tag=Active,limit=1] DirecToPlace
execute as @e[type=minecraft:snowball,scores={snowballTime=1}] if score @s UUID1 = @a[tag=Active,team=Black,limit=1] UUID1 run tag @s add BlackShield
execute as @e[type=minecraft:snowball,scores={snowballTime=1}] if score @s UUID1 = @a[tag=Active,team=Blue,limit=1] UUID1 run tag @s add BlueShield
execute as @e[type=minecraft:snowball,scores={snowballTime=1}] if score @s UUID1 = @a[tag=Active,team=Red,limit=1] UUID1 run tag @s add RedShield
execute as @e[type=minecraft:snowball,scores={snowballTime=1}] if score @s UUID1 = @a[tag=Active,team=Green,limit=1] UUID1 run tag @s add GreenShield
tag @s remove Active