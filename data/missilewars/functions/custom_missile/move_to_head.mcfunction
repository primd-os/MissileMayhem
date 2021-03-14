execute store success score stringTest m.Constants run data modify storage string:io out set value ["m","w",":"]
data modify storage string:io out set value []

execute if score stringTest m.Constants matches 0 run function missilewars:custom_missile/move_to_cloud
execute unless score stringTest m.Constants matches 0 run function missilewars:custom_missile/set_default
execute unless score stringTest m.Constants matches 0 run tellraw @s {"text": "Your custom name did not start with 'mw:' so it has been reset to default.","color": "red"}
execute unless score stringTest m.Constants matches 0 run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
tag @s remove m.InHeadProgress2
tag @s remove m.strInProgress
clear @s writable_book