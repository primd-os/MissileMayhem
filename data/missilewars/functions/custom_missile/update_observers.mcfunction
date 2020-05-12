execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=down] run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ replace force
execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=up] run clone ~ ~1 ~ ~ ~1 ~ ~ ~1 ~ replace force
execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=west] run clone ~-1 ~ ~ ~-1 ~ ~ ~-1 ~ ~ replace force
execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=east] run clone ~1 ~ ~ ~1 ~ ~ ~1 ~ ~ replace force
execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=south] run clone ~ ~ ~1 ~ ~ ~1 ~ ~ ~1 replace force
execute as @e[tag=mover] at @s if block ~ ~ ~ observer[facing=north] run clone ~ ~ ~-1 ~ ~ ~-1 ~ ~ ~-1 replace force