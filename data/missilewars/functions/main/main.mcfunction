execute as @e[type=!slime] at @s run kill @s[dy=-10,y=0]

execute if score Running Constants matches 0 run function missilewars:main/lobby_main
execute if score Running Constants matches 1 run function missilewars:main/running_main

scoreboard players enable @a StopAdverts
scoreboard players enable @a MapVote

execute as @a unless score @s MapVote = @s PrevMapVote run function missilewars:main/switch_vote

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
execute as @a[tag=!PlayedBefore] run function missilewars:start/give_default_missile
execute as @a[tag=!PlayedBefore] run scoreboard players set @a DirectionPlace 0
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0