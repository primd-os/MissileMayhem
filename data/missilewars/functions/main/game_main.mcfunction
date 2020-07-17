execute as @e[type=!slime,type=!tnt,x=0] at @s run kill @s[dy=-10,y=0]
execute as @e[tag=BlueBase,x=0] run scoreboard players remove @s Timer 1
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs /= Twenty Constants
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick %= Twenty Constants
execute as @e[tag=BlueBase,x=0,scores={TimerTick=0}] if score @s Timer matches 1..2147483647 run tellraw @a[x=0] ["",{"text":"Game Starting in "},{"score":{"name":"@e[tag=BlueBase,x=0]","objective":"TimerSecs"}}]
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] run tellraw @a[x=0] {"text": "Game Started"}
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] at @s run scoreboard players set @s GameState 1
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:maps/load_map
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Blue,x=0] run function missilewars:start/tp/blue
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Green,x=0] run function missilewars:start/tp/green
execute as @e[tag=BlueBase,x=0,scores={Timer=0}] run scoreboard players reset @s Timer

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1..2 run function missilewars:end/check_end_game

function missilewars:item_managers/left_click_test

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map

execute as @a[scores={Game=1..},x=0] run function missilewars:main/running_main

scoreboard players enable @a[x=0] StopAdverts
scoreboard players reset @a[x=0] MapVote

execute as @a[scores={quits=1..},x=0] at @s run team join Lobby @s
execute as @a[scores={quits=1..},x=0] at @s run scoreboard players set @s Game 0
execute as @a[scores={quits=1..},x=0] at @s run function missilewars:main/clear_inv
scoreboard players set @a[scores={quits=1..},x=0] quits 0