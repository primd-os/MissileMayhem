execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ minecraft:structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"SAVE",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,sizeY:3,sizeZ:17}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ~6 ~5 ~ name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:structure_void replace air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:magenta_wool replace white_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:magenta_stained_glass replace white_stained_glass
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~5 ~5 ~ minecraft:redstone_block
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~5 ~5 ~ air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 air replace minecraft:structure_void
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 white_wool replace minecraft:magenta_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 white_stained_glass replace minecraft:magenta_stained_glass

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] if block ~6 ~5 ~ structure_block{name:""} run tellraw @s {"color":"red","text": "Invalid Structure Name. Ensure name has no spaces or capital letters."}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] if block ~6 ~5 ~ structure_block{name:""} run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] unless block ~6 ~5 ~ structure_block{name:""} run playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 1
function missilewars:main/clear_inv

tag @s remove Editor