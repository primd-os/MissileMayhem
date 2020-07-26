setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-7,posZ:-20}
data modify block ~ ~ ~ name set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]