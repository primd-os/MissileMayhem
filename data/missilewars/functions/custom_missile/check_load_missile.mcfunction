execute store success score stringTest m.Constants run data modify storage string:io out set value ["m","w",":"]
data modify storage string:io out set value []

execute unless score stringTest m.Constants matches 0 run tag @s add m.loadFail
execute as @s[tag=!m.loadFail] run function missilewars:custom_missile/load_missile
execute as @s[tag=m.loadFail] run tellraw @s {"color": "red","text": "You can't load from structures not starting with 'mw:'!"}
execute as @s[tag=m.loadFail] run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
tag @s remove m.loadFail