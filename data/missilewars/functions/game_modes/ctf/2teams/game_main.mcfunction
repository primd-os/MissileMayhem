function missilewars:game_modes/2teams/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/ctf/2teams/load_map

execute if score @s m.GameState matches 1 run function missilewars:game_modes/ctf/2teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:game_modes/ctf/2teams/reset_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=Base,x=0] run function missilewars:maps/spawn_plat


execute as @e[tag=Flag,tag=taken] run tag @s add remtaken
execute as @a[x=0] at @s as @e[tag=Flag,tag=taken] if score @s m.UUID1 = @a[sort=nearest,limit=1] m.UUID1 run tag @s remove remtaken
execute as @e[tag=Flag,tag=remtaken] run tag @s remove taken

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/ctf/2teams/running_main
function missilewars:item_managers/run_items

execute unless entity @a[x=0] run function missilewars:end/unload_game

function missilewars:game_modes/ctf/ctf_main