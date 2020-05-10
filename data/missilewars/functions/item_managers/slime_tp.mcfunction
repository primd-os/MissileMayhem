tag @e[type=slime,tag=!processed,limit=1] add processing
execute at @s anchored eyes positioned ^ ^ ^3.2 if block ~ ~-0.3 ~ air run teleport @e[tag=processing] ~ ~-0.3 ~
tag @e[tag=processing] add processed
tag @e remove processing