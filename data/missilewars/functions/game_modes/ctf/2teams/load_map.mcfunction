function missilewars:game_modes/2teams/load_map
execute at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/ctf_plat
execute at @e[type=area_effect_cloud,tag=Base,x=0] run summon minecraft:area_effect_cloud ^ ^-19 ^-6 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
