execute as @a[scores={deathCheck=1..1000},team=Blue] at @s run tp @s ~ ~ ~ ~180 ~
tag @a[scores={deathCheck=1..1000},team=Blue] remove died
scoreboard players set @a deathCheck 0
tag @a remove dead