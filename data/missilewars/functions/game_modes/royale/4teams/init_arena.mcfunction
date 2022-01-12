summon minecraft:marker 0 50 75 {Tags: ["Base","BlueBase"]}
summon minecraft:marker 0 50 -75 {Tags: ["Base","GreenBase"]}
summon minecraft:marker 75 50 0 {Tags: ["Base","RedBase"]}
summon minecraft:marker -75 50 0 {Tags: ["Base","PurpleBase"]}
execute as @e[type=marker,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=marker,tag=RedBase,x=0] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=marker,tag=PurpleBase,x=0] at @s run tp @s ~ ~ ~ ~270 ~
function missilewars:maps/slow_clear_map