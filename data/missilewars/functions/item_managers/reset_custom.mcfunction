execute in missilewars:store run setblock 0 0 -1 minecraft:shulker_box
execute in missilewars:store run data modify block 0 0 -1 Items set from entity @s Items[{id:"minecraft:shulker_box"}].tag.BlockEntityTag.Items
clear @s shulker_box
execute in missilewars:store run loot replace entity @s inventory.8 mine 0 0 -1