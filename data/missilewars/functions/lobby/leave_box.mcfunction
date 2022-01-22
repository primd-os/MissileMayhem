execute as @s[tag=Editor] run function missilewars:main/clear_inv
tag @s remove Editor
execute as @s[nbt={Inventory:[{id:"minecraft:writable_book"}]}] run function missilewars:custom_missile/attempt_move_to_head