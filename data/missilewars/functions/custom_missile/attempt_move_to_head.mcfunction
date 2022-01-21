data modify storage string:io queue append value {string:"notmw",maxchars:3,callback:{command:"function missilewars:custom_missile/move_to_head_callback",id:1}}
data modify storage string:io queue[-1].string set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function #rx.playerdb:api/v2/get/self
data modify storage rx.playerdb:io player.data.primd.mm.customName set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
function #rx.playerdb:api/v2/save/self
clear @s writable_book
data modify storage string:io queue[-1].callback.id set from entity @s UUID[0]
execute in hub:hub run function string:call