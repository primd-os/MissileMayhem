execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^6 ^9 ^8 ^8 ^11 minecraft:air
scoreboard players set @e[tag=CustomMissileArea,sort=nearest,limit=1] tntCount 0
clear @s tnt
give @s[tag=Editor] tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 16
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run particle minecraft:explosion_emitter ^-1 ^8 ^10 0 0 0 100 7