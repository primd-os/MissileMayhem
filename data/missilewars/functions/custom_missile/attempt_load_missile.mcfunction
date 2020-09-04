execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/new/juggurnaut"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/new/lightning"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/new/shieldbuster"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/new/tomohawk"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/old/juggurnaut"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/old/lightning"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/old/shieldbuster"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/old/tomohawk"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/thin/juggurnaut"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/thin/lightning"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/thin/shieldbuster"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:missiles/thin/tomohawk"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:shields/black"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:shields/blue"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:shields/green"]}}]}] run tag @s add fail
execute if entity @s[nbt={Inventory:[{id:"minecraft:writable_book",tag:{pages:["missilewars:shields/red"]}}]}] run tag @s add fail
execute as @s[tag=!fail] run function missilewars:custom_missile/load_missile
execute as @s[tag=fail] run tellraw @s {"color": "red","text": "You can't load from noncustom missiles!"}
execute as @s[tag=fail] run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
tag @s remove fail