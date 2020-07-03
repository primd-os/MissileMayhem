execute as @e[type=!slime,type=!tnt,x=0] at @s run kill @s[dy=-10,y=0]
execute as @e[tag=BlueBase,x=0] run scoreboard players remove @s Timer 1
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick = @s Timer
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerSecs /= Twenty Constants
execute as @e[tag=BlueBase,x=0] run scoreboard players operation @s TimerTick %= Twenty Constants
execute as @e[tag=BlueBase,x=0,scores={TimerTick=0}] if score @s Timer matches 1..2147483647 run tellraw @a ["",{"text":"Game Starting in "},{"score":{"name":"@e[tag=BlueBase,x=0]","objective":"TimerSecs"}}]
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] run tellraw @a[x=0] {"text": "Game Started"}
execute as @e[tag=BlueBase,x=0,scores={Timer=0},limit=1] at @s run scoreboard players set @s GameState 1
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] run function missilewars:maps/load_map
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Blue,x=0] run function missilewars:start/tp_blue
execute if entity @e[tag=BlueBase,x=0,scores={Timer=0}] as @a[team=Green,x=0] run function missilewars:start/tp_green

execute as @e[tag=BlueBase] if score @s GameState matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/left_click_test

execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=BlueBase] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase,x=0] if score @s GameState matches 1 at @e[tag=GreenBase] run function missilewars:maps/green/map

execute as @a[scores={Game=1..},x=0] run function missilewars:main/running_main

execute as @e[tag=CustomMissileArea] at @s positioned ~ ~6 ~-10 unless entity @a[dx=13,dy=10,dz=20] run fill ~8 ~ ~ ~13 ~4 ~20 air

execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run particle explosion ~ ~ ~
execute in missilewars:lobby run kill @e[type=tnt,nbt={Fuse: 1s},x=0]

execute in missilewars:lobby run kill @e[type=item,x=0]

scoreboard players enable @a[x=0] StopAdverts
scoreboard players enable @a[x=0] MapVote

execute as @a[x=0] unless score @s MapVote = @s PrevMapVote run function missilewars:main/switch_vote

execute as @a[scores={quits=1..},x=0] at @s run team join Lobby @s
execute as @a[scores={quits=1..},x=0] at @s run scoreboard players set @s Game 0
execute as @a[scores={quits=1..},x=0] at @s run function missilewars:main/clear_inv
scoreboard players set @a[scores={quits=1..},x=0] quits 0