execute as @e[type=!tnt,x=0] at @s run kill @s[dy=-10,y=0,gamemode=!spectator]
function missilewars:main/timer
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:game_modes/koth/4teams/load_map
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Blue,x=0] run function missilewars:start/tp/blue
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Green,x=0] run function missilewars:start/tp/green
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Red,x=0] run function missilewars:start/tp/red
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Black,x=0] run function missilewars:start/tp/black
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Blue,x=0] run scoreboard players set @e[tag=BlueBase,x=0] BlueLoss 1
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Green,x=0] run scoreboard players set @e[tag=BlueBase,x=0] GreenLoss 1
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Red,x=0] run scoreboard players set @e[tag=BlueBase,x=0] RedLoss 1
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] unless entity @a[team=Black,x=0] run scoreboard players set @e[tag=BlueBase,x=0] BlackLoss 1
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 run function missilewars:game_modes/koth/4teams/check_end_game

function missilewars:item_managers/left_click_test

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s BlueLoss matches 1 at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s GreenLoss matches 1 at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s RedLoss matches 1 at @e[tag=RedBase,x=0] run function missilewars:maps/red/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 unless score @s BlackLoss matches 1 at @e[tag=BlackBase,x=0] run function missilewars:maps/black/map

execute if score @e[tag=BlueBase,x=0,limit=1] BlueLoss matches 1 at @e[tag=BlueBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[tag=BlueBase,x=0,limit=1] GreenLoss matches 1 at @e[tag=GreenBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[tag=BlueBase,x=0,limit=1] RedLoss matches 1 at @e[tag=RedBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @e[tag=BlueBase,x=0,limit=1] BlackLoss matches 1 at @e[tag=BlackBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]

execute as @a[scores={Game=1..},x=0] run function missilewars:game_modes/koth/4teams/running_main

execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Blue] run scoreboard players add @e[tag=BlueBase,x=0] BlueScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Green] run scoreboard players add @e[tag=BlueBase,x=0] GreenScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Red] run scoreboard players add @e[tag=BlueBase,x=0] RedScore 1
execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20,team=Black] run scoreboard players add @e[tag=BlueBase,x=0] BlackScore 1

execute positioned -2.5 30 -2.5 if entity @a[x=0,dx=5,dz=5,dy=20] run scoreboard players add @e[tag=BlueBase,x=0] GameClock 1
execute if score @e[tag=BlueBase,x=0,limit=1] GameClock matches 100 run tellraw @a[x=0] ["",{"text":"Blue:","color":"dark_blue"},{"score":{"name":"@e[tag=BlueBase,x=0,limit=1]","objective":"BlueScore"},"color":"dark_blue"},{"text":" Green:","color":"green"},{"score":{"name":"@e[tag=BlueBase,x=0,limit=1]","objective":"GreenScore"},"color":"green"},{"text":" Red:","color":"red"},{"score":{"name":"@e[tag=BlueBase,x=0,limit=1]","objective":"RedScore"},"color":"red"},{"text":" Black:","color":"white"},{"score":{"name":"@e[tag=BlueBase,x=0,limit=1]","objective":"BlackScore"},"color":"white"}]
execute if score @e[tag=BlueBase,x=0,limit=1] GameClock matches 100 run scoreboard players set @e[tag=BlueBase,x=0,limit=1] GameClock 0