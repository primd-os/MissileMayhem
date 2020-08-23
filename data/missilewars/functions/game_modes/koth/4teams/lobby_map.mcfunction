summon minecraft:area_effect_cloud 0 0.1 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlueBase","NewBase"]}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","GreenBase","NewBase"]}
summon minecraft:area_effect_cloud 75 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","RedBase","NewBase"]}
summon minecraft:area_effect_cloud -75 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlackBase","NewBase"]}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Tomohawk"],CustomName:'"Tomohawk"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Juggurnaut"],CustomName:'"Juggurnaut"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Lightning"],CustomName:'"Lightning"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shieldbuster"],CustomName:'"Shieldbuster"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Custom"],CustomName:'"Custom"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shield"],CustomName:'"Shield"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Fireball"],CustomName:'"Fireball"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Arrows"],CustomName:'"Arrows"'}
scoreboard players set @e[tag=NewBase,tag=BlueBase,x=0] GameState 0
scoreboard players operation @e[tag=NewBase,tag=BlueBase,x=0] Timer = Timer Constants
scoreboard players set @e[tag=NewBase,tag=BlueBase,x=0] BlueLoss 0
scoreboard players set @e[tag=NewBase,tag=BlueBase,x=0] GreenLoss 0
scoreboard players set @e[tag=NewBase,tag=BlueBase,x=0] RedLoss 0
scoreboard players set @e[tag=NewBase,tag=BlueBase,x=0] BlackLoss 0
execute as @e[tag=NewBase,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=NewBase,tag=RedBase,x=0] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=NewBase,tag=BlackBase,x=0] at @s run tp @s ~ ~ ~ ~270 ~
scoreboard players operation @e[tag=NewBase,x=0] Game = @s Game
tag @e remove NewBase
function missilewars:maps/clear_map
execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map
execute at @e[tag=RedBase,x=0] run function missilewars:maps/red/map
execute at @e[tag=BlackBase,x=0] run function missilewars:maps/black/map
execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[tag=BlackBase,x=0] run function missilewars:maps/black/basic_map

fill -5 28 -5 5 30 5 white_stained_glass
fill -2 29 -2 2 30 2 black_stained_glass
fill -1 29 -1 1 30 1 obsidian