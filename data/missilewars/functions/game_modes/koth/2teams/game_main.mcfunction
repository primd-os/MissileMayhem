function missilewars:game_modes/2teams/triggers

function missilewars:main/shared_game_main
function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/koth/2teams/load_map

execute if score @s m.GameState matches 1..2 run function missilewars:game_modes/koth/2teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:end/finish_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute as @a[scores={m.Game=1..},x=0] run function missilewars:game_modes/koth/2teams/running_main
function missilewars:item_managers/run_items

function missilewars:game_modes/koth/koth_main

execute if score @s m.GameClock matches 100 run tellraw @a[x=0] ["",{"text":"Blue:","color":"dark_blue"},{"score":{"name":"@e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1]","objective":"m.BlueScore"},"color":"dark_blue"},{"text":" Green:","color":"green"},{"score":{"name":"@e[type=area_effect_cloud,tag=GameMarker,x=0,limit=1]","objective":"m.GreenScore"},"color":"green"}]
execute if score @s m.GameClock matches 100 run scoreboard players set @s m.GameClock 0

execute if score @s m.GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game