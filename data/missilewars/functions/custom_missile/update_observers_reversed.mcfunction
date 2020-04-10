execute as @e[tag=mover] at @s if score temp Constants matches 4 run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ replace force
execute as @e[tag=mover] at @s if score temp Constants matches 5 run clone ~ ~1 ~ ~ ~1 ~ ~ ~1 ~ replace force
execute as @e[tag=mover] at @s if score temp Constants matches 6 run clone ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ ~ replace force
execute as @e[tag=mover] at @s if score temp Constants matches 7 run clone ~1 ~ ~ ~1 ~ ~ ~1 ~ ~ replace force
execute as @e[tag=mover] at @s if score temp Constants matches 8 run clone ~ ~ ~1 ~ ~ ~1 ~ ~ ~1 replace force
execute as @e[tag=mover] at @s if score temp Constants matches 9 run clone ~ ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 replace force