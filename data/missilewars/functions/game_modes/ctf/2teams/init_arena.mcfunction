summon minecraft:marker 0 50 75 {Tags: ["Base","BlueBase"]}
summon minecraft:marker 0 50 -75 {Tags: ["Base","GreenBase"]}
execute as @e[type=marker,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
function missilewars:maps/slow_clear_map