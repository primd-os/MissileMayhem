execute as @e[type=creeper, name="Blue Tomohawk"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:-10}
execute as @e[type=creeper, name="Green Tomohawk"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:10, rotation:CLOCKWISE_180}
execute as @e[type=creeper, name="Blue Tomohawk"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:-17}
execute as @e[type=creeper, name="Green Tomohawk"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:17, rotation:CLOCKWISE_180}

execute as @e[type=wolf, name="Blue Juggurnaut"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/juggurnaut",posX:0,posY:-7,posZ:-18}
execute as @e[type=wolf, name="Green Juggurnaut"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/juggurnaut",posX:0,posY:-7,posZ:18, rotation:CLOCKWISE_180}
execute as @e[type=wolf, name="Blue Juggurnaut"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/juggurnaut",posX:-1,posY:-7,posZ:-15}
execute as @e[type=wolf, name="Green Juggurnaut"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/juggurnaut",posX:1,posY:-7,posZ:15, rotation:CLOCKWISE_180}

execute as @e[type=ocelot, name="Blue Lightning"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:-1,posY:-7,posZ:-9}
execute as @e[type=ocelot, name="Green Lightning"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:1,posY:-7,posZ:9, rotation:CLOCKWISE_180}
execute as @e[type=ocelot, name="Blue Lightning"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:-1,posY:-7,posZ:-13}
execute as @e[type=ocelot, name="Green Lightning"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:1,posY:-7,posZ:13, rotation:CLOCKWISE_180}

execute as @e[type=witch, name="Blue Shieldbuster"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:-14}
execute as @e[type=witch, name="Green Shieldbuster"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:14, rotation:CLOCKWISE_180}
execute as @e[type=witch, name="Blue Shieldbuster"] at @s as @a[team=Blue,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:-1,posY:-7,posZ:-19}
execute as @e[type=witch, name="Green Shieldbuster"] at @s as @a[team=Green,sort=nearest] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:1,posY:-7,posZ:19, rotation:CLOCKWISE_180}

execute as @e[type=cave_spider, name="Blue Custom"] at @s as @a[sort=nearest,limit=1] run function missilewars:custom_missile/blue_shoot_missile
execute as @e[type=cave_spider, name="Green Custom"] at @s as @a[sort=nearest,limit=1] run function missilewars:custom_missile/green_shoot_missile

execute as @e[type=#missilewars:missile_mobs] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=#missilewars:missile_mobs] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @e[type=#missilewars:missile_mobs]