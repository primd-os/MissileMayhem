execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=0,gamemode=!spectator]
function missilewars:main/timer
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:maps/load_map
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Blue,x=0] run function missilewars:start/tp/blue
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Green,x=0] run function missilewars:start/tp/green
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1..2 run function missilewars:end/check_end_game

function missilewars:item_managers/left_click_test

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map

execute as @a[scores={Game=1..},x=0] run function missilewars:main/running_main

execute as @a[scores={quits=1..},x=0] at @s run function missilewars:end/leave
scoreboard players set @a[scores={quits=1..},x=0] quits 0