execute as @a[scores={deathCheck=1..1000},team=Blue] at @s run tp @s ~ ~ ~ ~180 ~
tag @a[scores={deathCheck=1..1000},team=Blue] remove dead
scoreboard players set @a deathCheck 0