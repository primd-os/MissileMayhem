kill @e[type=marker,tag=PracticeArea,x=0]
forceload add 0 0

execute positioned -400 50 -400 run function missilewars:practice/spawn_area
execute positioned -400 50 0 run function missilewars:practice/spawn_area
execute positioned -400 50 400 run function missilewars:practice/spawn_area
execute positioned 0 50 -400 run function missilewars:practice/spawn_area
execute positioned 0 50 0 run function missilewars:practice/spawn_area
execute positioned 0 50 400 run function missilewars:practice/spawn_area
execute positioned 400 50 -400 run function missilewars:practice/spawn_area
execute positioned 400 50 0 run function missilewars:practice/spawn_area
execute positioned 400 50 400 run function missilewars:practice/spawn_area

execute as @e[type=marker,x=0,tag=PracticeArea] at @s run function missilewars:practice/area