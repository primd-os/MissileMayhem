function missilewars:game_modes/4teams/triggers

execute as @e[type=!tnt,type=!area_effect_cloud,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/koth/4teams/load_map

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/koth/4teams/check_end_game

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/koth/4teams/running_main
function missilewars:item_managers/run_items

function missilewars:game_modes/koth/koth_main

execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock matches 100 run tellraw @a[x=0] ["",{"text":"Blue:","color":"dark_blue"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"BlueScore"},"color":"dark_blue"},{"text":" Green:","color":"green"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"GreenScore"},"color":"green"},{"text":" Red:","color":"red"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"RedScore"},"color":"red"},{"text":" Black:","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"BlackScore"},"color":"white"}]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock matches 100 run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock 0

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game