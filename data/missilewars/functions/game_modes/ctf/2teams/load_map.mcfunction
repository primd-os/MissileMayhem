execute as @e[type=marker,tag=Base,x=0] at @s run tp @s ^ ^ ^20
function missilewars:game_modes/load_map
execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/ctf_plat
execute at @e[type=marker,tag=Base,x=0] run summon minecraft:marker ^ ^-19 ^-6 {Tags: ["Flag"]}