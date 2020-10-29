function missilewars:game_modes/setup_game
summon minecraft:area_effect_cloud 0 50 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlueBase"]}
summon minecraft:area_effect_cloud 0 50 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","GreenBase"]}
summon minecraft:area_effect_cloud 75 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","RedBase"]}
summon minecraft:area_effect_cloud -75 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlackBase"]}
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlueLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GreenLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.RedLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlackLoss 0
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=area_effect_cloud,tag=RedBase,x=0] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=area_effect_cloud,tag=BlackBase,x=0] at @s run tp @s ~ ~ ~ ~270 ~
function missilewars:maps/slow_clear_map