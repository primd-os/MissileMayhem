execute as @a[scores={m.Game=1..},x=0] at @s at @s run function missilewars:practice/running_main
function missilewars:item_managers/run_items

kill @e[type=item,x=0]

execute as @e[type=marker,tag=PracticeClear,x=0] at @s run fill ~-112 0 ~ ~111 127 ~ air
execute as @e[type=marker,tag=PracticeClear,x=0] at @s run particle crimson_spore ~ ~ ~ 120 50 1 200 300 force
execute as @e[type=marker,tag=PracticeClear,x=0] at @s run tp ~ ~ ~1
execute as @e[type=marker,tag=PracticeClear,x=0] at @s run scoreboard players add @s m.clearZ 1
execute as @e[type=marker,tag=PracticeClear,x=0,scores={m.clearZ=224..}] at @s at @e[type=marker,tag=PracticeArea,sort=nearest,limit=1] run function missilewars:practice/basic_area
execute as @e[type=marker,tag=PracticeClear,x=0,scores={m.clearZ=224..}] at @s run kill @s

execute at @e[type=marker,tag=PracticeArea,tag=InUse,x=0] run fill ~-3 ~ ~-3 ~3 ~ ~3 obsidian