execute as @a[scores={m.Game=1..},x=0] at @s at @s run function missilewars:practice/running_main
function missilewars:item_managers/run_items

kill @e[type=item,x=0]

execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run fill ~-63 0 ~ ~63 127 ~1 air
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run particle crimson_spore ~ ~ ~ 60 50 1 100 300
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run tp ~ ~ ~2
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0] at @s run scoreboard players add @s m.points 1
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0,scores={m.points=63..}] at @s at @e[type=area_effect_cloud,tag=PracticeArea,sort=nearest,limit=1] run function missilewars:practice/basic_area
execute as @e[type=area_effect_cloud,tag=PracticeClear,x=0,scores={m.points=63..}] at @s run kill @s

execute at @e[type=area_effect_cloud,tag=PracticeArea,x=0] run fill ~-3 ~ ~-3 ~3 ~ ~3 obsidian