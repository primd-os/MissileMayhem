execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches ..1 run scoreboard players enable @s Leave
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 2.. run scoreboard players reset @s Leave
scoreboard players enable @s JoinSpectators
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinGreen
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinGreen
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinBlue
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinBlue
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinRed
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinRed
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinBlack
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinBlack
scoreboard players reset @s ChooseMap
scoreboard players reset @s GiveBook
scoreboard players operation @s ChooseMissileSe2 = @s ChooseMissileSet
scoreboard players reset @s ChooseMissileSet
scoreboard players operation @s ChooseMissileSet = @s ChooseMissileSe2
scoreboard players reset @s MissileSetSelect
scoreboard players reset @s ToggleRanked

function missilewars:game_modes/force_gamemode

function missilewars:main/manage_items

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={JoinBlue=1}] run function missilewars:start/join/blue
execute as @s[scores={JoinBlue=1}] run scoreboard players set @s JoinBlue 0

execute as @s[scores={JoinGreen=1}] run function missilewars:start/join/green
execute as @s[scores={JoinGreen=1}] run scoreboard players set @s JoinGreen 0

execute as @s[scores={JoinRed=1}] run function missilewars:start/join/red
execute as @s[scores={JoinRed=1}] run scoreboard players set @s JoinRed 0

execute as @s[scores={JoinBlack=1}] run function missilewars:start/join/black
execute as @s[scores={JoinBlack=1}] run scoreboard players set @s JoinBlack 0

execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0

execute as @s[scores={deathCheck=1..1000}] at @s run scoreboard players set @s DirectionPlace 1
execute as @s[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead
scoreboard players set @s deathCheck 0

execute at @e[type=area_effect_cloud,tag=Base,x=0] run particle minecraft:angry_villager ^85 ^75 ^-10 20 50 20 1 20 force
execute at @e[type=area_effect_cloud,tag=Base,x=0] positioned ^85 ^ ^-10 positioned ~-50 0 ~-50 as @s[dx=100,dy=255,dz=100] run tag @s add InDamage
effect give @s[tag=InDamage] wither 1 4
effect give @s[tag=InDamage] hunger 1 4
effect give @s[nbt={SelectedItem:{id:"minecraft:magenta_wool"}}] minecraft:haste 1 10 true
effect give @s[tag=!InDamage] minecraft:haste 2 2 true
effect give @s[tag=!InDamage,nbt=!{foodLevel:20}] minecraft:saturation 1 0 true
tag @s remove InDamage