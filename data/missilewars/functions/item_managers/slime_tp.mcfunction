tag @e[type=slime,tag=!processed,limit=1] add processing
execute at @s run tag @e[tag=processing] add ValidSpot
execute at @s anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^1.5 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^2 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^2.25 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^2.5 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^2.75 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^3 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^3.25 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^3.5 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^3.75 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^4 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^4.25 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^4.5 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^4.75 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^4.8 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^5 unless block ~ ~ ~ air run tag @e[tag=processing] remove ValidSpot
execute at @s anchored eyes positioned ^ ^ ^3.2 as @e[tag=processing] run tp @s[tag=ValidSpot] ~ ~-0.3 ~
execute at @s unless entity @a[distance=0.1..4] anchored eyes positioned ^ ^ ^1.5 as @e[tag=processing] run tp @s[tag=ValidSpot] ~ ~-0.3 ~
execute as @e[tag=processing] as @s[tag=!ValidSpot] run tp 0 255 0
execute as @e[tag=processing] at @s if entity @e[type=fireball,distance=0..2] run tp 0 255 0
execute as @e[tag=processing] at @s if entity @e[type=arrow,distance=0..3,nbt={inGround:0b}] run tp 0 255 0
tag target remove ValidSpot
tag @e[tag=processing] add processed
tag @e remove processing