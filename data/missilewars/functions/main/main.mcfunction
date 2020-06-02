execute as @e[type=!slime,type=!tnt] at @s run kill @s[dy=-10,y=0]

execute as @a[scores={Game=0}] run function missilewars:main/lobby_main
execute as @e[tag=BlueBase] run scoreboard players remove @s Timer 1
execute as @e[tag=BlueBase] run scoreboard players operation @s TimerSecs = @s Timer
execute as @e[tag=BlueBase] run scoreboard players operation @s TimerTick = @s Timer
execute as @e[tag=BlueBase] run scoreboard players operation @s TimerSecs /= Twenty Constants
execute as @e[tag=BlueBase] run scoreboard players operation @s TimerTick %= Twenty Constants
execute as @e[tag=BlueBase,scores={TimerTick=0}] if score @s Timer matches 1..2147483647 run tellraw @a ["",{"text":"Game Starting in "},{"score":{"name":"@e[tag=BlueBase]","objective":"TimerSecs"}}]
execute as @e[tag=BlueBase,scores={Timer=0},limit=1] run tellraw @a {"text": "Game Started"}
execute as @e[tag=BlueBase,scores={Timer=0},limit=1] at @s run scoreboard players set @s GameState 1
execute if entity @e[tag=BlueBase,scores={Timer=0}] run function missilewars:maps/load_map
execute if entity @e[tag=BlueBase,scores={Timer=0}] as @a[team=Blue] run function missilewars:start/tp_blue
execute if entity @e[tag=BlueBase,scores={Timer=0}] as @a[team=Green] run function missilewars:start/tp_green

execute as @e[tag=BlueBase] if score @s GameState matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/run_items
function missilewars:item_managers/left_click_test
fill -105 0 -105 105 0 -105 gray_stained_glass
fill 105 0 -105 105 0 105 gray_stained_glass
fill 105 0 105 -105 0 105 gray_stained_glass
fill -105 0 105 -105 0 -105 gray_stained_glass

execute as @e[tag=BlueBase] if score @s GameState matches 1 at @e[tag=BlueBase] run function missilewars:maps/blue/map
execute as @e[tag=BlueBase] if score @s GameState matches 1 at @e[tag=GreenBase] run function missilewars:maps/green/map

execute as @a[scores={Game=1..}] run function missilewars:main/running_main

bossbar set missile_time visible true
bossbar set missile_time players @a[scores={Game=1..}]

execute as @a[team=Lobby,nbt={Dimension: 0}] in the_nether run tp 0 101 0
effect give @a[team=Lobby] saturation 2 0 true

execute as @e[tag=CustomMissileArea] at @s positioned ~ ~6 ~-10 unless entity @a[dx=13,dy=10,dz=20] run fill ~8 ~ ~ ~13 ~4 ~20 air

execute as @e[type=tnt,nbt={Fuse: 1s, Dimension: -1}] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute as @e[type=tnt,nbt={Fuse: 1s, Dimension: -1}] at @s run particle explosion ~ ~ ~
kill @e[type=tnt,nbt={Fuse: 1s, Dimension: -1}]

kill @e[type=item,nbt={Dimension: -1}]

scoreboard players enable @a StopAdverts
scoreboard players enable @a MapVote

execute as @a unless score @s MapVote = @s PrevMapVote run function missilewars:main/switch_vote

execute as @a[scores={quits=1..}] at @s run team join Lobby @s
execute as @a[scores={quits=1..}] at @s run scoreboard players set @s Game 0
execute as @a[scores={quits=1..}] at @s run function missilewars:main/clear_inv
scoreboard players set @a[scores={quits=1..}] quits 0

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
execute as @a[tag=!PlayedBefore] run function missilewars:start/give_default_missile
execute as @a[tag=!PlayedBefore] run scoreboard players set @a DirectionPlace 0
execute as @a[tag=!PlayedBefore] run team join Lobby @s
execute as @a[tag=!PlayedBefore] at @s run scoreboard players set @s Game 0
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0