execute as @e[tag=missile] at @s as @a[team=Blue,scores={PlacedMissile=1}] run fill ~-19 ~-4 ~-19 ~19 ~-8 ~19 blue_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[team=Green,scores={PlacedMissile=1}] run fill ~-19 ~-4 ~-19 ~19 ~-8 ~19 green_wool replace magenta_wool
execute as @e[tag=missile] at @s as @a[team=Blue,scores={PlacedMissile=1}] run fill ~-19 ~-4 ~-19 ~19 ~-8 ~19 blue_stained_glass replace magenta_stained_glass
execute as @e[tag=missile] at @s as @a[team=Green,scores={PlacedMissile=1}] run fill ~-19 ~-4 ~-19 ~19 ~-8 ~19 green_stained_glass replace magenta_stained_glass

kill @e[tag=missile]