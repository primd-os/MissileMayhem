function missilewars:game_modes/load_map
execute as @e[type=marker,tag=m.FFABase,x=0] at @s run summon minecraft:marker ~ ~1 ~ {Tags: ["Flag"]}
tag @e[type=marker,tag=GameMarker,x=0] add m.PerfectCTFPossible