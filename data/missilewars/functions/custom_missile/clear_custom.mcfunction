execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:air
scoreboard players set @e[tag=CustomMissileArea,sort=nearest,limit=1] tntCount 0
clear @s tnt
give @s tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 16