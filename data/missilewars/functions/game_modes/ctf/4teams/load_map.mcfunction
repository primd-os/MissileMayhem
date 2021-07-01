execute as @e[type=marker,tag=Base,x=0] at @s run tp @s ^ ^ ^20
function missilewars:game_modes/4teams/load_map
execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/ctf_plat
execute if entity @a[x=0,team=Blue] at @e[type=marker,tag=BlueBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=Green] at @e[type=marker,tag=GreenBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=Red] at @e[type=marker,tag=RedBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=Purple] at @e[type=marker,tag=BlackBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GreenScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlueScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.RedScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlackScore 0
execute if entity @a[x=0,team=Green] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute if entity @a[x=0,team=Blue] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute if entity @a[x=0,team=Red] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute if entity @a[x=0,team=Purple] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlackScore 1