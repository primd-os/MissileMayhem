xp set @a 0 levels
effect give @a minecraft:haste 2 2 true
scoreboard players reset @a Start
scoreboard players reset @a AutoTeam
scoreboard players reset @a JoinSpectators
scoreboard players reset @a ChooseMap
scoreboard players reset @a GiveBook
scoreboard players reset @a ChooseMissileSet
scoreboard players reset @a MissileSetSelect

execute unless score Ending Constants matches 1 run gamemode survival @a[team=!Spectator,gamemode=!creative]
execute unless score Ending Constants matches 1 run gamemode spectator @a[team=Spectator,gamemode=!creative]

bossbar set missile_time visible true
bossbar set missile_time players @a[team=!Spectator]

schedule clear missilewars:start/missile_set_loop

setblock -4 100 0 air

function missilewars:main/manage_items

execute as @a store result score @s bowCount run clear @s crossbow 0
execute as @a[team=!Spectator,scores={bowCount=0}] run function missilewars:main/givebow
execute as @a[team=!Spectator,scores={bowCount=2..2000}] run clear @s crossbow 1

execute as @a[scores={deathCheck=1..1000},team=Blue] at @s run scoreboard players set @s DirecToPlace 2
execute as @a[scores={deathCheck=1..1000},team=Green] at @s run scoreboard players set @s DirecToPlace 0
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
scoreboard players set @a deathCheck 0

execute unless score Ending Constants matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/run_items
function missilewars:item_managers/left_click_test
fill -104 0 -104 104 128 -104 air
fill 104 0 -104 104 128 104 air
fill 104 0 104 -104 128 104 air
fill -104 0 104 -104 128 -104 air

fill -104 128 -104 104 128 0 air
fill -104 128 0 104 128 104 air
fill -105 0 -105 105 0 -105 gray_stained_glass
fill 105 0 -105 105 0 105 gray_stained_glass
fill 105 0 105 -105 0 105 gray_stained_glass
fill -105 0 105 -105 0 -105 gray_stained_glass

execute at @e[tag=BlueBase] if score Ending Constants matches 0 run function missilewars:maps/blue/map
execute at @e[tag=GreenBase] if score Ending Constants matches 0 run function missilewars:maps/green/map