xp set @a 0 levels
effect give @a minecraft:haste 2 2 true
scoreboard players reset @a Start
scoreboard players reset @a AutoTeam
scoreboard players reset @a JoinSpectators
scoreboard players reset @a ChooseMap
scoreboard players reset @a GiveBook

execute unless score Ending Constants matches 1 run gamemode survival @a[team=!Spectator,gamemode=!creative]
execute unless score Ending Constants matches 1 run gamemode spectator @a[team=Spectator,gamemode=!creative]

setblock -4 100 0 air

execute as @a store result score @s bowCount run clear @s crossbow 0
execute as @a[team=!Spectator,scores={bowCount=0}] run function missilewars:main/givebow
execute as @a[team=!Spectator,scores={bowCount=2..2000}] run clear @s crossbow 1

execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead

execute unless score Ending Constants matches 1 run function missilewars:end/check_end_game

function missilewars:item_managers/run_items