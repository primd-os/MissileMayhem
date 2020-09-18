execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^1 ^-1 ^8 ^3 ^1 minecraft:air
scoreboard players set @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount 0
clear @s tnt
scoreboard players operation tnt Variables = TntLimit Constants
execute as @s[tag=Editor] run function missilewars:custom_missile/give_tnt
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run particle minecraft:explosion_emitter ^ ^2 ^ 0 0 0 100 7