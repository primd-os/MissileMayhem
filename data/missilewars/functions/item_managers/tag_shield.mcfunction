tag @s add Active
execute as @s[scores={m.DirectionPlace=1},y_rotation=-45..45] run scoreboard players set @s m.DirecToPlace 0
execute as @s[scores={m.DirectionPlace=1},y_rotation=45..135] run scoreboard players set @s m.DirecToPlace 1
execute as @s[scores={m.DirectionPlace=1},y_rotation=135..180] run scoreboard players set @s m.DirecToPlace 2
execute as @s[scores={m.DirectionPlace=1},y_rotation=-180..-135] run scoreboard players set @s m.DirecToPlace 2
execute as @s[scores={m.DirectionPlace=1},y_rotation=-135..-45] run scoreboard players set @s m.DirecToPlace 3
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,limit=1] m.UUID1 run scoreboard players operation @s m.DirecToPlace = @a[tag=Active,limit=1] m.DirecToPlace
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,team=m.Purple,limit=1] m.UUID1 run tag @s add PurpleShield
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,team=m.Blue,limit=1] m.UUID1 run tag @s add BlueShield
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,team=m.Red,limit=1] m.UUID1 run tag @s add RedShield
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,team=m.Green,limit=1] m.UUID1 run tag @s add GreenShield
execute as @e[type=minecraft:snowball,scores={m.snowballTime=1}] if score @s m.UUID1 = @a[tag=Active,team=m.FFA,limit=1] m.UUID1 run tag @s add FFAShield
tag @s remove Active