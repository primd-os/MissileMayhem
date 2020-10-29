function missilewars:game_modes/setup_game
summon minecraft:area_effect_cloud 0 50 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlueBase"]}
summon minecraft:area_effect_cloud 0 50 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","GreenBase"]}
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GreenScore 1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlueScore 1
function missilewars:maps/slow_clear_map