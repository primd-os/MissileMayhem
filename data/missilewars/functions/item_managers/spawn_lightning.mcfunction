execute if entity @s[scores={MissileSet=0,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:1,posY:-7,posZ:9, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=0,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:-9,posY:-7,posZ:1, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=0,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:-1,posY:-7,posZ:-9}
execute if entity @s[scores={MissileSet=0,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/lightning",posX:9,posY:-7,posZ:-1, rotation:CLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:1,posY:-7,posZ:13, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=1,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:-13,posY:-7,posZ:1, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:-1,posY:-7,posZ:-13}
execute if entity @s[scores={MissileSet=1,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/lightning",posX:13,posY:-7,posZ:-1, rotation:CLOCKWISE_90}