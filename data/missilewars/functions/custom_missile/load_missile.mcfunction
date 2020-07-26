playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 0

tag @s add Editor
function missilewars:main/clear_inv

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"LOAD",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,sizeY:3,sizeZ:17}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ~6 ~5 ~ name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~5 ~5 ~ minecraft:redstone_block
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~5 ~5 ~ air

function missilewars:custom_missile/clean_up