execute as @a[scores={Game=0}] run function missilewars:main/lobby_main

execute in missilewars:game1 run function missilewars:main/game_main
execute in missilewars:game2 run function missilewars:main/game_main

function missilewars:item_managers/run_items
function missilewars:new_missile/missile_loop

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
execute as @a[tag=!PlayedBefore] run scoreboard players set @s DirectionPlace 0
execute as @a[tag=!PlayedBefore] run scoreboard players set @s StopAdverts 0
execute as @a[tag=!PlayedBefore] run team join Lobby @s
execute as @a[tag=!PlayedBefore] at @s run scoreboard players set @s Game 0
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0