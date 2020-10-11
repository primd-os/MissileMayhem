summon minecraft:area_effect_cloud 0 50 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlueBase","NewBase"]}
summon minecraft:area_effect_cloud 0 50 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","GreenBase","NewBase"]}
summon minecraft:area_effect_cloud 75 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","RedBase","NewBase"]}
summon minecraft:area_effect_cloud -75 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlackBase","NewBase"]}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Tomahawk"],CustomName:'"Tomahawk"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Juggernaut"],CustomName:'"Juggernaut"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Lightning"],CustomName:'"Lightning"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shieldbuster"],CustomName:'"Shieldbuster"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Custom"],CustomName:'"Custom"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shield"],CustomName:'"Shield"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Fireball"],CustomName:'"Fireball"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Arrows"],CustomName:'"Arrows"'}
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.GameState 0
scoreboard players operation @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.Timer = Timer m.Constants
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.BlueLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.GreenLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.RedLoss 0
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] m.BlackLoss 0
execute as @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=area_effect_cloud,tag=NewBase,tag=RedBase,x=0] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=area_effect_cloud,tag=NewBase,tag=BlackBase,x=0] at @s run tp @s ~ ~ ~ ~270 ~
scoreboard players operation @e[type=area_effect_cloud,tag=NewBase,x=0] m.Game = @s Game
tag @e remove NewBase
function missilewars:maps/slow_clear_map