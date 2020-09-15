execute as @e[type=!tnt,type=!area_effect_cloud,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/ctf/4teams/load_map
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Blue,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] BluePoints 0
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Green,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenPoints 0
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Red,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] RedPoints 0
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Black,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackPoints 0
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[x=0,team=!Spectator] run function missilewars:end/finish_game
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/ctf/4teams/check_end_game

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BluePoints matches 0 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenPoints matches 0 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] RedPoints matches 0 at @e[type=area_effect_cloud,tag=RedBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlackPoints matches 0 at @e[type=area_effect_cloud,tag=BlackBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/ctf/4teams/running_main
function missilewars:item_managers/run_items

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game

execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=0] run setblock ~ ~ ~ white_banner[rotation=0]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=90] run setblock ~ ~ ~ white_banner[rotation=4]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=180] run setblock ~ ~ ~ white_banner[rotation=8]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=-90] run setblock ~ ~ ~ white_banner[rotation=12]
execute at @e[type=area_effect_cloud,tag=Flag,tag=taken] if block ~ ~ ~ white_banner run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=0] run setblock ~ ~ ~ white_banner[rotation=0]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=90] run setblock ~ ~ ~ white_banner[rotation=4]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=180] run setblock ~ ~ ~ white_banner[rotation=8]
execute at @e[type=area_effect_cloud,tag=Flag,tag=!taken] positioned ~ ~30 ~ as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[y_rotation=-90] run setblock ~ ~ ~ white_banner[rotation=12]
execute at @e[type=area_effect_cloud,tag=Flag,tag=taken] positioned ~ ~30 ~ if block ~ ~ ~ white_banner run setblock ~ ~ ~ air