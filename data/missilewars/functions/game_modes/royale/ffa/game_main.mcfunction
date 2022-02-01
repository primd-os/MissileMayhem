function missilewars:game_modes/ffa/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/royale/ffa/init_arena
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/royale/load_map

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/royale/ffa/running_main
function missilewars:item_managers/run_items

execute if score @s m.GameState matches 1..2 run function missilewars:game_modes/royale/ffa/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:game_modes/royale/ffa/reset_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=m.FFABase,x=0] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:obsidian
execute if score @s m.GameState matches 1 at @e[type=marker,tag=m.FFABase,x=0] run fill ~ ~1 ~ ~ ~2 ~ minecraft:air

execute unless entity @a[x=0] run function missilewars:end/unload_game