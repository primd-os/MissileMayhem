execute as @e[type=!slime] at @s run kill @s[dy=-10,y=0]

execute as @a[scores={Game=0}] run function missilewars:main/lobby_main
function missilewars:start/check_start

execute as @a[scores={Game=1..}] run function missilewars:main/running_main

bossbar set missile_time visible true
bossbar set missile_time players @a[scores={Game=1..}]

execute as @a[team=Lobby,nbt={Dimension:0}] in the_nether run tp 0 101 0
effect give @a[team=Lobby] saturation 2 0 true

kill @e[type=item,nbt={Dimension:-1}]

scoreboard players enable @a StopAdverts
scoreboard players enable @a MapVote

execute as @a unless score @s MapVote = @s PrevMapVote run function missilewars:main/switch_vote

execute as @a[scores={quits=1..}] at @s run team join Lobby @s
scoreboard players set @a[scores={quits=1..}] quits 0

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
execute as @a[tag=!PlayedBefore] run function missilewars:start/give_default_missile
execute as @a[tag=!PlayedBefore] run scoreboard players set @a DirectionPlace 0
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0