execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~6 ~5 ~ minecraft:structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"SAVE",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,sizeY:3,sizeZ:17}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ~6 ~5 ~ name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:structure_void replace air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:magenta_wool replace white_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 minecraft:magenta_stained_glass replace white_stained_glass
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] unless entity @e[tag=UUIDHolder,distance=..15] run summon minecraft:area_effect_cloud ~10 ~8 ~-1 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["UUIDHolder","new"]}
scoreboard players operation @e[tag=UUIDHolder,tag=new,limit=1] UUID1 = @s UUID1
tag @e[tag=UUIDHolder,tag=new] remove new
execute as @e[tag=UUIDHolder,distance=..15] store result entity @s ReapplicationDelay int 1 run scoreboard players get @s UUID1
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] if score @e[tag=UUIDHolder,sort=nearest,limit=1] UUID1 = @s UUID1 run setblock ~5 ~5 ~ minecraft:redstone_block
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] unless score @e[tag=UUIDHolder,sort=nearest,limit=1] UUID1 = @s UUID1 run tellraw @s {"color":"red","text": "You do not have permission to modify this structure."}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] unless score @e[tag=UUIDHolder,sort=nearest,limit=1] UUID1 = @s UUID1 run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ~5 ~5 ~ air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 air replace minecraft:structure_void
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 white_wool replace minecraft:magenta_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ~8 ~6 ~-10 ~12 ~10 ~8 white_stained_glass replace minecraft:magenta_stained_glass

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] if block ~6 ~5 ~ structure_block{name:""} run tellraw @s {"color":"red","text": "Invalid Structure Name. Ensure name has no spaces or capital letters."}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] if block ~6 ~5 ~ structure_block{name:""} run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] unless block ~6 ~5 ~ structure_block{name:""} run playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 1
function missilewars:main/clear_inv

tag @s remove Editor