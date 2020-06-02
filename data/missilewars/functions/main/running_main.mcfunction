xp set @s 0 levels
effect give @s minecraft:haste 2 2 true
scoreboard players enable @s Start
scoreboard players reset @s AutoTeam
scoreboard players enable @s JoinSpectators
scoreboard players enable @s JoinGreen
scoreboard players enable @s JoinBlue
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players operation @s ChooseMissileSe2 = @s ChooseMissileSet
scoreboard players reset @s ChooseMissileSet
scoreboard players operation @s ChooseMissileSet = @s ChooseMissileSe2
scoreboard players reset @s MissileSetSelect

tag @s add ActivePlayer
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=0}] run gamemode adventure @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=1}] run gamemode survival @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
execute as @e[tag=BlueBase,sort=nearest] if entity @s[scores={GameState=2}] run gamemode spectator @a[tag=ActivePlayer,team=!Spectator,gamemode=!creative]
gamemode spectator @a[tag=ActivePlayer,team=Spectator,gamemode=!creative]
tag @s remove ActivePlayer

execute as @s[scores={Start=1,StartVote=0}] as @e[tag=BlueBase,scores={Timer=60..,GameState=0}] run scoreboard players remove @s Timer 60
execute as @s[scores={Start=1,StartVote=0}] as @e[tag=BlueBase,scores={Timer=..60,GameState=0}] run scoreboard players set @s Timer 1
execute as @s[scores={Start=1}] run scoreboard players set @s StartVote 1
execute as @s[scores={Start=1}] run scoreboard players set @s Start 0

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join_blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join_green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

function missilewars:main/manage_items

execute as @s store result score @s bowCount run clear @s crossbow 0
execute as @s[team=!Spectator,scores={bowCount=0}] run function missilewars:main/givebow
execute as @s[team=!Spectator,scores={bowCount=2..2000}] run clear @s crossbow 1

execute as @s[scores={deathCheck=1..1000},team=Blue] at @s run scoreboard players set @s DirecToPlace 2
execute as @s[scores={deathCheck=1..1000},team=Green] at @s run scoreboard players set @s DirecToPlace 0
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
scoreboard players set @s deathCheck 0