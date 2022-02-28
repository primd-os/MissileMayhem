function missilewars:game_modes/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/ctf/ffa/init_arena
execute if entity @s[scores={m.Timer=0}] run scoreboard players set @a[x=0,team=m.FFA] m.FFAScore 1
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/ctf/ffa/load_map

execute if score @s m.GameState matches 1 run function missilewars:game_modes/ctf/ffa/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:game_modes/ctf/ffa/reset_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=m.FFABase,x=0] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:obsidian
execute if score @s m.GameState matches 1 at @e[type=marker,tag=m.FFABase,x=0] run fill ~ ~1 ~ ~ ~2 ~ minecraft:air

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/ctf/ffa/running_main
function missilewars:item_managers/run_items

execute unless entity @a[x=0] run function missilewars:end/unload_game

function missilewars:game_modes/ctf/ctf_main