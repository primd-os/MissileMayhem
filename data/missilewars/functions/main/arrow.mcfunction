execute as @e[type=minecraft:arrow,nbt={inGround:1b},tag=!used_for_update] at @s if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:cave_air
execute as @e[type=minecraft:arrow,nbt={inGround:1b},tag=!used_for_update] at @s if block ~ ~ ~ cave_air run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:arrow,nbt={inGround:1b},tag=!used_for_update] at @s if block ~ ~ ~ air run tag @s add used_for_update
execute as @e[type=minecraft:arrow] run data merge entity @s {Fire:9999s}