forceload add -200 -200 -100 200
forceload add -100 -200 0 200
forceload add 0 -200 100 200
forceload add 100 -200 200 200

summon minecraft:area_effect_cloud 1000 50 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["GameMarker"]}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Tomahawk"],CustomName:'"Tomahawk"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Juggernaut"],CustomName:'"Juggernaut"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Lightning"],CustomName:'"Lightning"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shieldbuster"],CustomName:'"Shieldbuster"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Custom"],CustomName:'"Custom"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Shield"],CustomName:'"Shield"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Fireball"],CustomName:'"Fireball"'}
summon minecraft:area_effect_cloud 1000 0.1 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["QueueItem","Arrows"],CustomName:'"Arrows"'}
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GameState 0
scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Timer = Timer m.Constants
scoreboard players operation @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Game = @s Game
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Tomahawk -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Juggernaut -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Lightning -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Shieldbuster -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Custom -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Shield -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Fireball -1
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.Arrows -1