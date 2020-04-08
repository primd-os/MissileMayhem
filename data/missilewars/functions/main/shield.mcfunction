execute as @e[type=minecraft:snowball] run scoreboard players add @s snowballTime 1
execute as @e[type=minecraft:snowball,scores={snowballTime=20}] at @s run fill ~-2 ~-2 ~ ~2 ~2 ~ minecraft:gray_stained_glass
kill @e[type=minecraft:snowball,scores={snowballTime=20}]