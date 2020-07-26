data modify storage missilewars:temp offhand set value []

data modify storage missilewars:temp offhand append from entity @s Inventory[{id:"minecraft:writable_book",Slot:103b}]
data modify storage missilewars:temp offhand[0].Slot set value 0b
clear @s
setblock ~ ~ ~ shulker_box
data modify block ~ ~ ~ Items set from storage missilewars:temp offhand
loot give @s mine ~ ~ ~ air{drop_contents: 1b}
setblock ~ ~ ~ air