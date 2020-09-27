say check_id_save

execute positioned 0 0 0 as @e[type=area_effect_cloud,tag=UUIDHolder,distance=..5] store result score @s UUID1 run data get entity @s ReapplicationDelay
execute positioned 0 0 0 if score @s UUID1 = @e[type=area_effect_cloud,tag=UUIDHolder,distance=..5,limit=1] UUID1 at @s run function missilewars:custom_missile/save_missile
execute positioned 0 0 0 unless score @s UUID1 = @e[type=area_effect_cloud,tag=UUIDHolder,distance=..5,limit=1] UUID1 run tellraw @s {"color":"red","text": "You do not have permission to modify this missile."}
execute positioned 0 0 0 unless score @s UUID1 = @e[type=area_effect_cloud,tag=UUIDHolder,distance=..5,limit=1] UUID1 at @s run playsound minecraft:block.note_block.guitar block @s ~ ~ ~ 1 0