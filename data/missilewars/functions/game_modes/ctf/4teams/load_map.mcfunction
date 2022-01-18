execute as @e[type=marker,tag=Base,x=0] at @s run tp @s ^ ^ ^20
function missilewars:game_modes/load_map
execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/ctf_plat
execute if entity @a[x=0,team=m.Blue] at @e[type=marker,tag=BlueBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=m.Green] at @e[type=marker,tag=GreenBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=m.Red] at @e[type=marker,tag=RedBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
execute if entity @a[x=0,team=m.Purple] at @e[type=marker,tag=PurpleBase,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GreenScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlueScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.RedScore 0
scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.PurpleScore 0
execute if entity @a[x=0,team=m.Green] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.GreenScore 1
execute if entity @a[x=0,team=m.Blue] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.BlueScore 1
execute if entity @a[x=0,team=m.Red] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.RedScore 1
execute if entity @a[x=0,team=m.Purple] run scoreboard players set @e[type=marker,tag=GameMarker,x=0] m.PurpleScore 1
execute if entity @a[x=0,team=m.Green] if entity @a[x=0,team=m.Blue] if entity @a[x=0,team=m.Red] if entity @a[x=0,team=m.Purple] run tag @e[type=marker,tag=Base,x=0] add m.PerfectCTFPossible