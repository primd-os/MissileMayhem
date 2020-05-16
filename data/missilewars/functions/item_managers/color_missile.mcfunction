execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=0,PlacedMissile=1}] run fill ~-1 ~-4 ~4 ~1 ~-8 ~19 blue_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=0,PlacedMissile=1}] run fill ~-1 ~-4 ~4 ~1 ~-8 ~19 green_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=0,PlacedMissile=1}] run fill ~-1 ~-4 ~4 ~1 ~-8 ~19 blue_stained_glass replace white_stained_glass
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=0,PlacedMissile=1}] run fill ~-1 ~-4 ~4 ~1 ~-8 ~19 green_stained_glass replace white_stained_glass

execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=1,PlacedMissile=1}] run fill ~-4 ~-4 ~1 ~19 ~-8 ~-1 blue_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=1,PlacedMissile=1}] run fill ~-4 ~-4 ~1 ~19 ~-8 ~-1 green_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=1,PlacedMissile=1}] run fill ~-4 ~-4 ~1 ~19 ~-8 ~-1 blue_stained_glass replace white_stained_glass
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=1,PlacedMissile=1}] run fill ~-4 ~-4 ~1 ~19 ~-8 ~-1 green_stained_glass replace white_stained_glass

execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=2,PlacedMissile=1}] run fill ~1 ~-4 ~-4 ~-1 ~-8 ~-19 blue_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=2,PlacedMissile=1}] run fill ~1 ~-4 ~-4 ~-1 ~-8 ~-19 green_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=2,PlacedMissile=1}] run fill ~1 ~-4 ~-4 ~-1 ~-8 ~-19 blue_stained_glass replace white_stained_glass
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=2,PlacedMissile=1}] run fill ~1 ~-4 ~-4 ~-1 ~-8 ~-19 green_stained_glass replace white_stained_glass

execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=3,PlacedMissile=1}] run fill ~4 ~-4 ~-1 ~-19 ~-8 ~1 blue_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=3,PlacedMissile=1}] run fill ~4 ~-4 ~-1 ~-19 ~-8 ~1 green_wool replace white_wool
execute as @e[tag=missile] at @s as @a[team=Blue,scores={DirecToPlace=3,PlacedMissile=1}] run fill ~4 ~-4 ~-1 ~-19 ~-8 ~1 blue_stained_glass replace white_stained_glass
execute as @e[tag=missile] at @s as @a[team=Green,scores={DirecToPlace=3,PlacedMissile=1}] run fill ~4 ~-4 ~-1 ~-19 ~-8 ~1 green_stained_glass replace white_stained_glass

kill @e[tag=missile]