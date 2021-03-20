data modify storage string:io queue append value {string:"notmw",maxchars:3,callback:{command:"function missilewars:custom_missile/move_to_head_callback",id:1}}
data modify storage string:io queue[0].string set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.primd.mm.customName set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function rx.playerdb:api/save_self
clear @s writable_book
data modify storage string:io queue[0].callback.id set from entity @s UUID[0]
execute in minecraft:overworld run function string:call