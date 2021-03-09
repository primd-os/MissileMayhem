data modify storage string:io queue append value {string:"",maxchars:3}
data modify storage string:io queue[0].string set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
execute in minecraft:overworld run function string:call
tag @s add m.InHeadProgress