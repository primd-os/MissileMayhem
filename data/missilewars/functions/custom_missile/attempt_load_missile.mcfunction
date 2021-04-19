data modify storage string:io queue append value {string:"notmw",maxchars:3,callback:{command:"function missilewars:custom_missile/attempt_load_missile_callback",id:1}}
data modify storage string:io queue[-1].string set from entity @s Inventory[{id:"minecraft:writable_book"}].tag.pages[0]
data modify storage string:io queue[-1].callback.id set from entity @s UUID[0]
execute in minecraft:overworld run function string:call