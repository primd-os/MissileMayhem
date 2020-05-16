xp set @s 0 levels
effect give @s minecraft:haste 2 2 true
scoreboard players reset @s Start
scoreboard players reset @s AutoTeam
scoreboard players reset @s JoinSpectators
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players reset @s ChooseMissileSet
scoreboard players reset @s MissileSetSelect

execute unless score Ending Constants matches 1 run gamemode survival @s[team=!Spectator,gamemode=!creative]
execute unless score Ending Constants matches 1 run gamemode spectator @s[team=Spectator,gamemode=!creative]

schedule clear missilewars:start/missile_set_loop

setblock -4 100 0 air

function missilewars:main/manage_items

execute as @s store result score @s bowCount run clear @s crossbow 0
execute as @s[team=!Spectator,scores={bowCount=0}] run function missilewars:main/givebow
execute as @s[team=!Spectator,scores={bowCount=2..2000}] run clear @s crossbow 1

execute as @s[scores={deathCheck=1..1000},team=Blue] at @s run scoreboard players set @s DirecToPlace 2
execute as @s[scores={deathCheck=1..1000},team=Green] at @s run scoreboard players set @s DirecToPlace 0
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
scoreboard players set @s deathCheck 0

execute unless score Ending Constants matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/run_items
function missilewars:item_managers/left_click_test
fill -105 0 -105 105 0 -105 gray_stained_glass
fill 105 0 -105 105 0 105 gray_stained_glass
fill 105 0 105 -105 0 105 gray_stained_glass
fill -105 0 105 -105 0 -105 gray_stained_glass

execute at @e[tag=BlueBase] if score Ending Constants matches 0 run function missilewars:maps/blue/map
execute at @e[tag=GreenBase] if score Ending Constants matches 0 run function missilewars:maps/green/map