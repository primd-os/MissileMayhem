say check_name_save

execute if block 0 1 0 structure_block{name:""} run tellraw @s {"color":"red","text": "Invalid Structure Name. Ensure name has no spaces or capital letters."}
execute if block 0 1 0 structure_block{name:""} run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0
execute unless block 0 1 0 structure_block{name:""} run function missilewars:custom_missile/save_missile