execute as @e[type=creeper, name="Blue Tomohawk"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/tomohawk",posX:0,posY:-7,posZ:-10}
execute as @e[type=creeper, name="Green Tomohawk"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/tomohawk",posX:0,posY:-7,posZ:10, rotation:CLOCKWISE_180}
execute as @e[type=creeper] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=creeper] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=creeper]

execute as @e[type=wolf, name="Blue Juggurnaut"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/juggurnaut",posX:0,posY:-7,posZ:-18}
execute as @e[type=wolf, name="Green Juggurnaut"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/juggurnaut",posX:0,posY:-7,posZ:18, rotation:CLOCKWISE_180}
execute as @e[type=wolf] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=wolf] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=wolf]

execute as @e[type=ocelot, name="Blue Lightning"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/lightning",posX:-1,posY:-7,posZ:-9}
execute as @e[type=ocelot, name="Green Lightning"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/lightning",posX:1,posY:-7,posZ:9, rotation:CLOCKWISE_180}
execute as @e[type=ocelot] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=ocelot] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=ocelot]

execute as @e[type=witch, name="Blue Shieldbuster"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/shieldbuster",posX:0,posY:-7,posZ:-14}
execute as @e[type=witch, name="Green Shieldbuster"] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/shieldbuster",posX:0,posY:-7,posZ:14, rotation:CLOCKWISE_180}
execute as @e[type=witch] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=witch] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=witch]

execute as @e[type=cave_spider, name="Blue Custom"] at @s as @a[sort=nearest,limit=1] run function missilewars:custom_missile/blue_shoot_missile
execute as @e[type=cave_spider, name="Blue Custom"] at @s run function missilewars:custom_missile/blue_shoot_missile
execute as @e[type=cave_spider, name="Green Custom"] at @s as @a[sort=nearest,limit=1] run function missilewars:custom_missile/green_shoot_missile
execute as @e[type=cave_spider, name="Green Custom"] at @s run function missilewars:custom_missile/green_shoot_missile
kill @e[type=cave_spider]