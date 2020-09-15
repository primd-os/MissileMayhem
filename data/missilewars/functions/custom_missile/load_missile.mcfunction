playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 0

execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-10 ^6 ^8 ^8 ^10 ^12 minecraft:air

tag @s add Editor
function missilewars:main/clear_inv

execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^6 air
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^6 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"LOAD",posY:1,posZ:-8,integrity:1.0f,showair:0b}

execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score Temp Variables positioned ^ ^5 ^6 run data get block ~ ~ ~ posX 1
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^5 ^6 store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posX
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^5 ^6 store result block ~ ~ ~ posZ int -1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=90] positioned ^ ^5 ^6 run data modify block ~ ~ ~ rotation set value CLOCKWISE_180
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^5 ^6 store result block ~ ~ ~ posX int 1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^5 ^6 store result block ~ ~ ~ posZ int -1 run scoreboard players get Temp Variables
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=-180] positioned ^ ^5 ^6 run data modify block ~ ~ ~ rotation set value COUNTERCLOCKWISE_90
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^5 ^6 store result block ~ ~ ~ posX int -1 run data get block ~ ~ ~ posZ
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^5 ^6 store result block ~ ~ ~ posZ int 1 run scoreboard players get Temp Variables
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s if entity @s[y_rotation=0] positioned ^ ^5 ^6 run data modify block ~ ~ ~ rotation set value CLOCKWISE_90

execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ^ ^5 ^6 name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^5 minecraft:redstone_block
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^5 air
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 white_wool replace minecraft:magenta_wool
execute at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 white_stained_glass replace minecraft:magenta_stained_glass
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score @s tntCount run fill ^-10 ^6 ^8 ^8 ^10 ^12 target replace tnt
execute as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-10 ^6 ^8 ^8 ^10 ^12 tnt replace target
clear @s tnt
scoreboard players operation tnt Variables = TntLimit Constants
scoreboard players operation tnt Variables -= @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount
execute if score tnt Variables matches 1.. run function missilewars:custom_missile/give_tnt

kill @e[type=area_effect_cloud,x=0,tag=UUIDHolder]