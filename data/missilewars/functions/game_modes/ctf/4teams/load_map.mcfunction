execute as @e[type=area_effect_cloud,tag=Base,x=0] at @s run tp @s ^ ^ ^20
function missilewars:game_modes/4teams/load_map
execute at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/ctf_plat
execute if entity @a[x=0,team=Blue] at @e[type=area_effect_cloud,tag=BlueBase,x=0] run summon minecraft:area_effect_cloud ^ ^-19 ^-6 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
execute if entity @a[x=0,team=Green] at @e[type=area_effect_cloud,tag=GreenBase,x=0] run summon minecraft:area_effect_cloud ^ ^-19 ^-6 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
execute if entity @a[x=0,team=Red] at @e[type=area_effect_cloud,tag=RedBase,x=0] run summon minecraft:area_effect_cloud ^ ^-19 ^-6 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
execute if entity @a[x=0,team=Black] at @e[type=area_effect_cloud,tag=BlackBase,x=0] run summon minecraft:area_effect_cloud ^ ^-19 ^-6 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GreenScore 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlueScore 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.RedScore 0
scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlackScore 0
execute if entity @a[x=0,team=Green] run scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.GreenScore 1
execute if entity @a[x=0,team=Blue] run scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlueScore 1
execute if entity @a[x=0,team=Red] run scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.RedScore 1
execute if entity @a[x=0,team=Black] run scoreboard players set @e[type=area_effect_cloud,tag=GameMarker,x=0] m.BlackScore 1