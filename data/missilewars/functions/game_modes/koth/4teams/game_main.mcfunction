execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/koth/4teams/load_map
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/koth/4teams/check_end_game

function missilewars:game_modes/force_gamemode

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/koth/4teams/running_main
function missilewars:item_managers/run_items

execute positioned -2.5 30 -2.5 as @a[x=0,tag=Claiming] unless entity @s[x=0,dx=5,dz=5,dy=20] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is no longer claiming the point."}]
execute positioned -2.5 30 -2.5 as @a[x=0,tag=!Claiming] if entity @s[x=0,dx=5,dz=5,dy=20] run tellraw @a[x=0] [{"selector": "@s"}, {"text": " is claiming the point."}]
tag @a[x=0] remove Claiming
execute positioned -2.5 30 -2.5 run tag @a[x=0,dx=5,dz=5,dy=20] add Claiming

execute positioned -2.5 30 -2.5 run effect give @a[x=0,dx=5,dz=5,dy=20] glowing 1 0 true
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Blue] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Green] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Red] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] RedScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Black] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackScore 1

execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] GameClock 1
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock matches 100 run tellraw @a[x=0] ["",{"text":"Blue:","color":"dark_blue"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"BlueScore"},"color":"dark_blue"},{"text":" Green:","color":"green"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"GreenScore"},"color":"green"},{"text":" Red:","color":"red"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"RedScore"},"color":"red"},{"text":" Black:","color":"white"},{"score":{"name":"@e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1]","objective":"BlackScore"},"color":"white"}]
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock matches 100 run scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameClock 0

execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game