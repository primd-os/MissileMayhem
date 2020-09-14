execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/ctf/2teams/load_map
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/ctf/2teams/check_end_game

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/ctf/2teams/running_main
function missilewars:item_managers/run_items

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game

execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] run setblock ~ ~ ~ white_banner
execute at @e[type=area_effect_cloud,tag=Flag,tag=taken] if block ~ ~ ~ white_banner run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] positioned ~ ~30 ~ run setblock ~ ~ ~ white_banner
execute at @e[type=area_effect_cloud,tag=Flag,tag=taken] positioned ~ ~30 ~ if block ~ ~ ~ white_banner run setblock ~ ~ ~ air