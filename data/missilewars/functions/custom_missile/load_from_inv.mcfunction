execute in missilewars:store run setblock 0 0 -1 minecraft:shulker_box
execute in missilewars:store run fill 0 0 0 0 0 5 minecraft:shulker_box
execute in missilewars:store run data modify block 0 0 -1 Items set from entity @s Items[{id:"minecraft:shulker_box"}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 0 Items set from block 0 0 -1 Items[{Slot:0b}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 1 Items set from block 0 0 -1 Items[{Slot:1b}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 2 Items set from block 0 0 -1 Items[{Slot:2b}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 3 Items set from block 0 0 -1 Items[{Slot:3b}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 4 Items set from block 0 0 -1 Items[{Slot:4b}].tag.BlockEntityTag.Items
execute in missilewars:store run data modify block 0 0 5 Items set from block 0 0 -1 Items[{Slot:5b}].tag.BlockEntityTag.Items