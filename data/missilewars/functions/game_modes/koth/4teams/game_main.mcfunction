function missilewars:game_modes/4teams/triggers

function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/koth/4teams/load_map

execute if score @s m.GameState matches 1 run function missilewars:game_modes/koth/4teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:end/finish_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=marker,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute as @a[scores={m.Game=1..},x=0] at @s run function missilewars:game_modes/koth/4teams/running_main
function missilewars:item_managers/run_items

function missilewars:game_modes/koth/koth_main

execute if score @s m.GameClock matches 100 run tellraw @a[x=0] ["",{"text":"Blue:","color":"dark_blue"},{"score":{"name":"@e[type=marker,tag=GameMarker,x=0,limit=1]","objective":"m.BlueScore"},"color":"dark_blue"},{"text":" Green:","color":"green"},{"score":{"name":"@e[type=marker,tag=GameMarker,x=0,limit=1]","objective":"m.GreenScore"},"color":"green"},{"text":" Red:","color":"red"},{"score":{"name":"@e[type=marker,tag=GameMarker,x=0,limit=1]","objective":"m.RedScore"},"color":"red"},{"text":" Black:","color":"white"},{"score":{"name":"@e[type=marker,tag=GameMarker,x=0,limit=1]","objective":"m.BlackScore"},"color":"white"}]
execute if score @s m.GameClock matches 100 run scoreboard players set @s m.GameClock 0

execute if score @s m.GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game