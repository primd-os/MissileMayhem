function missilewars:game_modes/setup_game
summon minecraft:marker 0 50 75 {Tags: ["Base","BlueBase"]}
summon minecraft:marker 0 50 -75 {Tags: ["Base","GreenBase"]}
execute as @e[type=marker,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
function missilewars:maps/slow_clear_map