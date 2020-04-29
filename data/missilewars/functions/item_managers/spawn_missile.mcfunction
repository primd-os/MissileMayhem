execute as @e[tag=missile, name="Blue Tomohawk"] at @s as @a[team=Blue,scores={PlacedTomohawk=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:-10}
execute as @e[tag=missile, name="Green Tomohawk"] at @s as @a[team=Green,scores={PlacedTomohawk=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:10, rotation:CLOCKWISE_180}
execute as @e[tag=missile, name="Blue Tomohawk"] at @s as @a[team=Blue,scores={PlacedTomohawk=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:-17}
execute as @e[tag=missile, name="Green Tomohawk"] at @s as @a[team=Green,scores={PlacedTomohawk=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:17, rotation:CLOCKWISE_180}

execute as @e[tag=missile, name="Blue Juggurnaut"] at @s as @a[team=Blue,scores={PlacedJuggurnaut=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/juggurnaut",posX:0,posY:-7,posZ:-18}
execute as @e[tag=missile, name="Green Juggurnaut"] at @s as @a[team=Green,scores={PlacedJuggurnaut=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/juggurnaut",posX:0,posY:-7,posZ:18, rotation:CLOCKWISE_180}
execute as @e[tag=missile, name="Blue Juggurnaut"] at @s as @a[team=Blue,scores={PlacedJuggurnaut=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/juggurnaut",posX:-1,posY:-7,posZ:-15}
execute as @e[tag=missile, name="Green Juggurnaut"] at @s as @a[team=Green,scores={PlacedJuggurnaut=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/juggurnaut",posX:1,posY:-7,posZ:15, rotation:CLOCKWISE_180}

execute as @e[tag=missile, name="Blue Lightning"] at @s as @a[team=Blue,scores={PlacedLightning=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:-1,posY:-7,posZ:-9}
execute as @e[tag=missile, name="Green Lightning"] at @s as @a[team=Green,scores={PlacedLightning=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:1,posY:-7,posZ:9, rotation:CLOCKWISE_180}
execute as @e[tag=missile, name="Blue Lightning"] at @s as @a[team=Blue,scores={PlacedLightning=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:-1,posY:-7,posZ:-13}
execute as @e[tag=missile, name="Green Lightning"] at @s as @a[team=Green,scores={PlacedLightning=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:1,posY:-7,posZ:13, rotation:CLOCKWISE_180}

execute as @e[tag=missile, name="Blue Shieldbuster"] at @s as @a[team=Blue,scores={PlacedBuster=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:-14}
execute as @e[tag=missile, name="Green Shieldbuster"] at @s as @a[team=Green,scores={PlacedBuster=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/shieldbuster",posX:0,posY:-7,posZ:14, rotation:CLOCKWISE_180}
execute as @e[tag=missile, name="Blue Shieldbuster"] at @s as @a[team=Blue,scores={PlacedBuster=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:-1,posY:-7,posZ:-19}
execute as @e[tag=missile, name="Green Shieldbuster"] at @s as @a[team=Green,scores={PlacedBuster=1},sort=nearest,limit=1] if entity @s[scores={MissileSet=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/shieldbuster",posX:1,posY:-7,posZ:19, rotation:CLOCKWISE_180}

execute as @e[tag=missile, name="Blue Custom"] at @s as @a[team=Blue,scores={PlacedCustom=1},sort=nearest,limit=1] run function missilewars:custom_missile/blue_shoot_missile
execute as @e[tag=missile, name="Green Custom"] at @s as @a[team=Green,scores={PlacedCustom=1},sort=nearest,limit=1] run function missilewars:custom_missile/green_shoot_missile

scoreboard players set @a PlacedTomohawk 0
scoreboard players set @a PlacedJuggurnaut 0
scoreboard players set @a PlacedLightning 0
scoreboard players set @a PlacedBuster 0
scoreboard players set @a PlacedCustom 0

execute as @e[tag=missile] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[tag=missile] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute as @e[tag=missile] at @s run playsound minecraft:entity.shulker.shoot block @a ~ ~ ~
kill @e[tag=missile]