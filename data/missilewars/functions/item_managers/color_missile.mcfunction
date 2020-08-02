execute as @e[tag=missile] at @s as @a[sort=nearest,team=Blue,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 blue_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Green,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 green_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Red,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 red_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Black,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 black_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Blue,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 blue_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Green,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 green_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Red,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 red_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Black,scores={PlacedMissile=1},limit=1] run fill ~-20 ~-3 ~-20 ~20 ~-8 ~20 black_stained_glass replace magenta_stained_glass

kill @e[tag=missile]