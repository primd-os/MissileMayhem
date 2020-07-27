fill ~ ~ ~-14 ~15 ~25 ~14 air

# platform
fill ~6 ~7 ~-2 ~2 ~10 ~2 air
fill ~0 ~5 ~-14 ~14 ~5 ~14 black_concrete
fill ~2 ~6 ~2 ~6 ~6 ~-2 minecraft:blue_terracotta
fill ~6 ~4 ~-2 ~2 ~4 ~2 minecraft:blue_terracotta
fill ~6 ~5 ~-2 ~2 ~5 ~-2 minecraft:blue_terracotta
fill ~6 ~5 ~2 ~2 ~5 ~2 minecraft:blue_terracotta
fill ~2 ~5 ~1 ~2 ~5 ~-1 minecraft:blue_terracotta

setblock ~7 ~6 ~2 minecraft:anvil
setblock ~7 ~6 ~ minecraft:oak_wall_sign[facing=east]{Text1:'{"text":"Clear Missile","clickEvent":{"action":"run_command","value":"execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:air"}}',Text2:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set @e[tag=CustomMissileArea,sort=nearest,limit=1] tntCount 0"}}'}
setblock ~7 ~6 ~-2 minecraft:anvil

setblock ~3 ~8 ~-2 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/save_missile"}}',Text2:'{"text":"Save"}'}

setblock ~3 ~8 ~2 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/load_missile"}}',Text2:'{"text":"Load/Build"}'}

fill ~3 ~5 ~-1 ~4 ~5 ~1 minecraft:shulker_box

# custom missile area
fill ~7 ~5 ~10 ~8 ~4 ~-10 minecraft:blue_terracotta
fill ~12 ~5 ~10 ~13 ~4 ~-10 minecraft:blue_terracotta
fill ~7 ~5 ~-9 ~13 ~4 ~-10 minecraft:blue_terracotta
fill ~7 ~5 ~10 ~13 ~4 ~9 minecraft:blue_terracotta
fill ~9 ~5 ~8 ~11 ~5 ~-8 minecraft:barrier

fill ~6 ~6 ~11 ~14 ~9 ~11 air
fill ~14 ~6 ~-12 ~14 ~9 ~11 air
fill ~14 ~6 ~-12 ~6 ~9 ~-12 air
fill ~14 ~9 ~-12 ~6 ~9 ~11 air
fill ~14 ~7 ~8 ~14 ~7 ~-9 minecraft:magenta_glazed_terracotta[facing=west]

fill ~6 ~6 ~10 ~6 ~9 ~3 air
fill ~6 ~6 ~-3 ~6 ~9 ~-11 air
fill ~6 ~6 ~-3 ~1 ~9 ~-3 air
fill ~6 ~6 ~3 ~1 ~9 ~3 air
fill ~1 ~6 ~-3 ~1 ~9 ~3 air
fill ~-1 ~6 ~-3 ~ ~9 ~-1 air
fill ~-1 ~6 ~1 ~ ~9 ~3 air
fill ~ ~6 ~ ~-1 ~6 ~ air
setblock ~ ~4 ~ air

fill ~ ~6 ~ ~-5 ~6 ~ gray_stained_glass