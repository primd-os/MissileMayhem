summon minecraft:area_effect_cloud 0 50 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","BlueBase","NewBase"]}
summon minecraft:area_effect_cloud 0 50 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Base","GreenBase","NewBase"]}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Tomahawk"],CustomName:'"Tomahawk"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Juggernaut"],CustomName:'"Juggernaut"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Lightning"],CustomName:'"Lightning"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shieldbuster"],CustomName:'"Shieldbuster"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Custom"],CustomName:'"Custom"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shield"],CustomName:'"Shield"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Fireball"],CustomName:'"Fireball"'}
summon minecraft:area_effect_cloud 0 0.1 -75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Arrows"],CustomName:'"Arrows"'}
scoreboard players set @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] GameState 0
scoreboard players operation @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] Timer = Timer Constants
execute as @e[type=area_effect_cloud,tag=NewBase,tag=BlueBase,x=0] at @s run tp @s ~ ~ ~ ~180 ~
scoreboard players operation @e[type=area_effect_cloud,tag=NewBase,x=0] Game = @s Game
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Tomahawk -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Juggernaut -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Lightning -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Shieldbuster -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Custom -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Shield -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Fireball -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] Arrows -1
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenScore 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueScore 0
tag @e remove NewBase
function missilewars:maps/slow_clear_map