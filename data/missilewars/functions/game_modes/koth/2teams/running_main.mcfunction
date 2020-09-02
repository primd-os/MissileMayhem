effect give @s minecraft:haste 2 2 true
effect give @s minecraft:saturation 2 0 true
scoreboard players enable @s Leave
execute if score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinSpectators
execute unless score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinSpectators
execute if score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinGreen
execute unless score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinGreen
execute if score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinBlue
execute unless score @e[tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinBlue
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players operation @s ChooseMissileSe2 = @s ChooseMissileSet
scoreboard players reset @s ChooseMissileSet
scoreboard players operation @s ChooseMissileSet = @s ChooseMissileSe2
scoreboard players reset @s MissileSetSelect

function missilewars:game_modes/force_gamemode

function missilewars:main/manage_items

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join/blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join/green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0

execute as @s[scores={deathCheck=1..1000}] at @s run scoreboard players set @s DirectionPlace 1
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
scoreboard players set @s deathCheck 0