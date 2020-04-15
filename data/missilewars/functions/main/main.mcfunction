function missilewars:main/manage_items

execute as @e at @s run kill @s[dy=-10,y=0]

execute if score Running Constants matches 0 run function missilewars:main/lobby_main
execute if score Running Constants matches 1 run function missilewars:main/running_main

scoreboard players enable @a StopAdverts