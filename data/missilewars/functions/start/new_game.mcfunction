scoreboard players set @a StartVote 0

function missilewars:maps/load_map
scoreboard players set Running Constants 1
scoreboard players set GreenWin Constants 0
scoreboard players set BlueWin Constants 0
execute as @a run function missilewars:start/join
execute at @e[tag=BlueBase] run tp @a[team=Blue] ~0 31 ~-1 180 0
execute at @e[tag=BlueBase] run spawnpoint @a[team=Blue] ~0 31 ~-1
execute at @e[tag=GreenBase] run tp @a[team=Green] ~0 31 ~1 0 0
execute at @e[tag=GreenBase] run spawnpoint @a[team=Green] ~0 31 ~1
gamemode survival @a[gamemode=!creative]
gamemode spectator @a[team=Spectator,gamemode=!creative]

replaceitem entity @a[team=Blue] armor.chest leather_chestplate{display:{color:3949738}} 1
replaceitem entity @a[team=Blue] armor.legs leather_leggings{display:{color:3949738}} 1
replaceitem entity @a[team=Green] armor.chest leather_chestplate{display:{color:6192150}} 1
replaceitem entity @a[team=Green] armor.legs leather_leggings{display:{color:6192150}} 1
replaceitem entity @a[team=Green] armor.feet leather_boots{display:{color:6192150}} 1

scoreboard players set @a[team=Blue] DirecToPlace 2
scoreboard players set @a[team=Green] DirecToPlace 0
scoreboard players set @a DirectionPlace 0

scoreboard objectives setdisplay sidebar missiles

scoreboard players set missile_time Constants 0
function missilewars:new_missile/new_missile
function missilewars:new_missile/new_missile
function missilewars:new_missile/missile_loop