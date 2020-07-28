data modify storage missilewars:temp offhand set value []

data modify storage missilewars:temp offhand append from entity @s Inventory[{id:"minecraft:writable_book"}]
data modify storage missilewars:temp offhand[0].Slot set value 0b
clear @s writable_book
setblock ~ ~ ~ shulker_box
data modify block ~ ~ ~ Items set from storage missilewars:temp offhand
loot replace entity @s armor.head mine ~ ~ ~ air{drop_contents: 1b}
setblock ~ ~ ~ air