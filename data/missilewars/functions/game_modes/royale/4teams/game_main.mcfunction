function missilewars:game_modes/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/royale/4teams/init_arena
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/royale/load_map

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/royale/4teams/running_main
function missilewars:item_managers/run_items

execute if score @s m.GameState matches 1 run function missilewars:game_modes/royale/4teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:game_modes/royale/4teams/reset_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute unless entity @a[x=0] run function missilewars:end/unload_game