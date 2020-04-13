xp set @a 0 levels
effect give @a minecraft:haste 2 2 true

execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead

execute unless score Ending Constants matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/run_items