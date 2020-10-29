function missilewars:game_modes/4teams/triggers

execute as @e[type=!tnt,type=!area_effect_cloud,x=0] at @s run kill @s[dy=-10,y=-64,gamemode=!spectator]
execute as @a[x=0,gamemode=spectator] at @s run tp @s[dy=-10,y=-64] 0 100 0
function missilewars:main/timer
execute if entity @s[scores={m.Timer=0}] run function missilewars:game_modes/ctf/4teams/load_map
execute if entity @s[scores={m.Timer=0}] unless entity @a[team=Blue,x=0] run scoreboard players set @s BluePoints 0
execute if entity @s[scores={m.Timer=0}] unless entity @a[team=Green,x=0] run scoreboard players set @s GreenPoints 0
execute if entity @s[scores={m.Timer=0}] unless entity @a[team=Red,x=0] run scoreboard players set @s RedPoints 0
execute if entity @s[scores={m.Timer=0}] unless entity @a[team=Black,x=0] run scoreboard players set @s BlackPoints 0
execute if entity @s[scores={m.Timer=0}] unless entity @a[x=0,team=!Spectator] run function missilewars:end/finish_game

execute if score @s m.GameState matches 1 run function missilewars:game_modes/ctf/4teams/check_end_game
execute as @s[scores={m.GameState=2..,m.EndTimer=0}] at @s run function missilewars:end/finish_game
execute as @s[scores={m.GameState=2..}] at @s run scoreboard players remove @s m.EndTimer 1

execute if score @s m.GameState matches 1 at @e[type=area_effect_cloud,tag=Base,x=0] run function missilewars:maps/spawn_plat

execute if score @s BluePoints matches 0 at @e[type=area_effect_cloud,tag=BlueBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @s GreenPoints matches 0 at @e[type=area_effect_cloud,tag=GreenBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @s RedPoints matches 0 at @e[type=area_effect_cloud,tag=RedBase] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]
execute if score @s BlackPoints matches 0 at @e[type=area_effect_cloud,tag=BlackBase,x=0] run particle minecraft:barrier ~ ~80 ~ 5 5 5 1 5 force @a[x=0]

execute as @a[scores={m.Game=1..},x=0] run function missilewars:game_modes/ctf/4teams/running_main
function missilewars:item_managers/run_items

execute if score @s m.GameState matches 1 unless entity @a[x=0] run function missilewars:end/finish_game

function missilewars:game_modes/ctf/ctf_main