playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 0

execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^1 ^-1 ^8 ^3 ^1 minecraft:air

tag @s add Editor
function missilewars:main/clear_inv

execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^-1 ^ air
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^-1 ^ minecraft:structure_block[mode=load]{rotation:"NONE",posX:-1,mode:"LOAD",posY:2,posZ:-8}

execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score Temp Variables positioned ^ ^-1 ^ run data get block ~ ~ ~ posX 1
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^-1 ^ store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posX
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^-1 ^ store result block ~ ~ ~ posZ int -1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^-1 ^ run data modify block ~ ~ ~ rotation set value CLOCKWISE_180
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^-1 ^ store result block ~ ~ ~ posX int 1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^-1 ^ store result block ~ ~ ~ posZ int -1 run scoreboard players get Temp Variables
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^-1 ^ run data modify block ~ ~ ~ rotation set value COUNTERCLOCKWISE_90
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^-1 ^ store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^-1 ^ store result block ~ ~ ~ posZ int 1 run scoreboard players get Temp Variables
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^-1 ^ run data modify block ~ ~ ~ rotation set value CLOCKWISE_90

execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ^ ^-1 ^ name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^-2 ^ minecraft:redstone_block
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^-2 ^ air
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-8 ^1 ^-1 ^8 ^3 ^1 white_wool replace minecraft:magenta_wool
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-8 ^1 ^-1 ^8 ^3 ^1 white_stained_glass replace minecraft:magenta_stained_glass
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score @s tntCount run fill ^-8 ^1 ^-1 ^8 ^3 ^1 target replace tnt
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^1 ^-1 ^8 ^3 ^1 tnt replace target
clear @s tnt
kill @e[type=area_effect_cloud,x=0,tag=UUIDHolder]