function missilewars:maps/map

execute if score Map Constants matches 0 run function missilewars:maps/basic_map
execute if score Map Constants matches 2 run function missilewars:maps/small_map
scoreboard players set Running Constants 1
scoreboard players set GreenWin Constants 0
scoreboard players set BlueWin Constants 0
execute as @a run function missilewars:start/join
tp @a[team=Blue] 0 31 96
spawnpoint @a[team=Blue] 0 31 96
tp @a[team=Green] 0 31 -96
spawnpoint @a[team=Green] 0 31 -96
gamemode survival @a

function missilewars:new_missile/missile_loop