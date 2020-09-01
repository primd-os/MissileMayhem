execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ^-1 ^8 ^10 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["UUIDHolder","toFill"]}
scoreboard players operation @e[tag=toFill] UUID1 = @s UUID1
execute as @e[tag=toFill] store result entity @s ReapplicationDelay int 1 run scoreboard players get @s UUID1
tag @e[tag=toFill] remove toFill
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^6 air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^6 minecraft:structure_block[mode=save]{metadata:"",mirror:"NONE",ignoreEntities:0b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:3,mode:"SAVE",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,sizeY:3,sizeZ:17}
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run data modify block ^ ^5 ^6 name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 minecraft:structure_void replace air
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 minecraft:magenta_wool replace white_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 minecraft:magenta_stained_glass replace white_stained_glass

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^5 minecraft:redstone_block
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run setblock ^ ^5 ^5 air

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 air replace minecraft:structure_void
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 white_wool replace minecraft:magenta_wool
execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run fill ^-10 ^6 ^8 ^8 ^10 ^12 white_stained_glass replace minecraft:magenta_stained_glass

execute at @e[tag=CustomMissileArea,sort=nearest,limit=1] run playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 1
tellraw @s [{"color":"green","text": "Successfully saved custom missile as \""},{"color":"green","entity": "@s","nbt": "Inventory[{id:\"minecraft:writable_book\"}].tag.pages[0]"},{"color":"green","text":"\""}]

function missilewars:main/clear_inv
tag @s remove Editor