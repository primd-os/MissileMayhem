say attempt_save

setblock 0 1 0 air
setblock 0 1 0 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"LOAD",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,sizeY:3,sizeZ:17}
data modify block 0 1 0 name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
setblock 0 0 0 minecraft:redstone_block
setblock 0 0 0 air

execute positioned 0 0 0 unless entity @e[distance=..5] at @s run function missilewars:custom_missile/check_name_save_missile

execute positioned 0 0 0 if entity @e[distance=..5] at @s run function missilewars:custom_missile/check_id_save_missile

kill @e[type=area_effect_cloud,tag=UUIDHolder]