execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:air
scoreboard players set @e[tag=CustomMissileArea,sort=nearest,limit=1] tntCount 0
clear @s tnt
give @s[tag=Editor] tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 16
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run particle minecraft:explosion_emitter ~10 ~8 ~-1 0 0 3 100 7