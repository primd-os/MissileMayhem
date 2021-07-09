function missilewars:game_modes/4teams/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/race/4teams/load_map

execute if score @s m.GameState matches 1 run function missilewars:game_modes/race/4teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:game_modes/race/4teams/reset_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/race/4teams/running_main
function missilewars:item_managers/run_items

execute if score @s m.GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game
execute if score @s m.GameState matches 1 unless entity @a[x=0] run function missilewars:end/unload_game

particle minecraft:happy_villager 0 50 -50 100 50 0 0.1 100 force
execute as @a[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tellraw @s {"text": "You have got the goal."}
execute as @a[z=-100,dz=50,x=-200,dx=400,y=0,dy=200,tag=!m.GotRace,gamemode=!spectator] run tag @s add m.GotRace
execute as @a[x=0,tag=m.GotRace] run effect give @s glowing 1 0 true