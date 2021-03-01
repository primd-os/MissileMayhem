function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.primd.mm.custom set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function rx.playerdb:api/save_self
clear @s writable_book