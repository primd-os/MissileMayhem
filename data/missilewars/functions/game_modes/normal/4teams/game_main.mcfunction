execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/normal/4teams/load_map
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Blue,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueLoss 1
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Green,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenLoss 1
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Red,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] RedLoss 1
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Black,x=0] run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackLoss 1
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[x=0,team=!Spectator] run function missilewars:end/finish_game
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/normal/4teams/check_end_game

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s BlueLoss matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s GreenLoss matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run function missilewars:maps/green/map
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s RedLoss matches 1 at @e[type=area_effect_cloud,tag=RedBase,x=0] run function missilewars:maps/red/map
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s BlackLoss matches 1 at @e[type=area_effect_cloud,tag=BlackBase,x=0] run function missilewars:maps/black/map

execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueLoss matches 1 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenLoss matches 1 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] RedLoss matches 1 at @e[type=area_effect_cloud,tag=RedBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlackLoss matches 1 at @e[type=area_effect_cloud,tag=BlackBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/normal/4teams/running_main
function missilewars:item_managers/run_items