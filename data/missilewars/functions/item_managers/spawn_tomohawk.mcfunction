execute if entity @s[scores={MissileSet=0,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:10, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=0,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:-10,posY:-7,posZ:0, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=0,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:0,posY:-7,posZ:-10}
execute if entity @s[scores={MissileSet=0,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/new/tomohawk",posX:10,posY:-7,posZ:0, rotation:CLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=0}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:17, rotation:CLOCKWISE_180}
execute if entity @s[scores={MissileSet=1,DirecToPlace=1}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:-17,posY:-7,posZ:0, rotation:COUNTERCLOCKWISE_90}
execute if entity @s[scores={MissileSet=1,DirecToPlace=2}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:0,posY:-7,posZ:-17}
execute if entity @s[scores={MissileSet=1,DirecToPlace=3}] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"missilewars:missiles/old/tomohawk",posX:17,posY:-7,posZ:0, rotation:CLOCKWISE_90}