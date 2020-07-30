execute as @e[tag=missile] at @s as @a[sort=nearest,team=Blue,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 blue_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Green,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 green_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Red,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 red_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Black,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 black_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Blue,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 blue_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Green,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 green_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Red,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 red_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[sort=nearest,team=Black,scores={PlacedMissile=1},limit=1] run fill ~-19 ~-3 ~-19 ~19 ~-8 ~19 black_stained_glass replace magenta_stained_glass

kill @e[tag=missile]