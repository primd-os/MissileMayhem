execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]

execute as @a[scores={Game=1..},x=0] run function missilewars:practice/running_main
function missilewars:item_managers/run_items