execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=0,gamemode=!spectator]
function missilewars:main/timer
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/normal/2teams/load_map
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1..2 run function missilewars:game_modes/normal/2teams/check_end_game

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/normal/2teams/running_main