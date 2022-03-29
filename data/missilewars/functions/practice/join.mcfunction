scoreboard players set @s m.Game 1000
team join m.FFA @s
gamemode survival @s

execute in missilewars:practice if entity @e[tag=m.PracticeArea,x=0] positioned 0 50 -400 at @e[tag=m.PracticeArea,sort=furthest] positioned ~ 50 ~400 run function missilewars:practice/go
execute in missilewars:practice unless entity @e[tag=m.PracticeArea,x=0] positioned 0 50 -400 positioned ~ 50 ~400 run function missilewars:practice/go
execute as @s[nbt={Inventory:[{id:"minecraft:writable_book"}]}] run function missilewars:custom_missile/attempt_move_to_head

execute as @s[nbt={Inventory:[{id:"minecraft:writable_book"}]}] run function missilewars:custom_missile/attempt_move_to_head
clear @s
scoreboard players set @s m.inv_change 1