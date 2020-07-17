setblock ~ ~ ~ minecraft:polished_blackstone_button[face=floor,powered=false] destroy
tag @s add worldly
scoreboard players set @s Game -1
execute in minecraft:overworld run tp 0 255 0