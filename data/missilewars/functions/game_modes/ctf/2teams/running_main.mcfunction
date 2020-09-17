effect give @s[nbt={SelectedItem:{id:"minecraft:magenta_wool"}}] minecraft:haste 1 10 true
effect give @s minecraft:haste 2 2 true
effect give @s[nbt=!{foodLevel:20}] minecraft:saturation 2 0 true
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches ..1 run scoreboard players enable @s Leave
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 2.. run scoreboard players reset @s Leave
scoreboard players enable @s JoinSpectators
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinGreen
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinGreen
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players enable @s JoinBlue
execute unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GameState matches 0 run scoreboard players reset @s JoinBlue
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


execute as @s[scores={Leave=1}] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run tag @s remove taken
execute as @s[scores={Leave=1}] at @s run tag @s remove carrier
execute as @s[scores={Leave=1}] run function missilewars:end/leave
execute as @s[scores={Leave=1}] run scoreboard players set @s Leave 0

execute as @s[scores={deathCheck=1..1000}] at @s run scoreboard players set @s DirectionPlace 1
execute as @s[scores={deathCheck=1..1000}] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run tag @s remove taken
execute as @s[scores={deathCheck=1..1000}] at @s run tag @s remove carrier
scoreboard players set @s deathCheck 0

execute as @s[team=Black,tag=carrier] at @e[type=area_effect_cloud,tag=BlackBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-6 positioned ~-2 ~ ~ as @s[dx=5,dy=1,dz=50] run tag @s add success
execute as @s[team=Red,tag=carrier] at @e[type=area_effect_cloud,tag=RedBase,x=0] positioned ~ ~-20 ~-25 positioned ^ ^ ^-6 positioned ~-2 ~ ~ as @s[dx=5,dy=1,dz=50] run tag @s add success
execute as @s[team=Blue,tag=carrier] at @e[type=area_effect_cloud,tag=BlueBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-6 positioned ~ ~ ~-2 as @s[dx=50,dy=1,dz=5] run tag @s add success
execute as @s[team=Green,tag=carrier] at @e[type=area_effect_cloud,tag=GreenBase,x=0] positioned ~-25 ~-20 ~ positioned ^ ^ ^-6 positioned ~ ~ ~-2 as @s[dx=50,dy=1,dz=5] run tag @s add success
execute as @s[team=Red,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] RedScore 1
execute as @s[team=Black,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackScore 1
execute as @s[team=Blue,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueScore 1
execute as @s[team=Green,tag=success] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenScore 1
execute as @s[tag=success] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Flag"]}
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=BlueBase] run scoreboard players remove @e[type=area_effect_cloud,tag=BlueBase,x=0] BlueScore 1
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=RedBase] run scoreboard players remove @e[type=area_effect_cloud,tag=BlueBase,x=0] RedScore 1
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=BlackBase] run scoreboard players remove @e[type=area_effect_cloud,tag=BlueBase,x=0] BlackScore 1
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=GreenBase] run scoreboard players remove @e[type=area_effect_cloud,tag=BlueBase,x=0] GreenScore 1
execute as @s[tag=success] at @s as @e[tag=Flag,tag=taken] if score @s UUID1 = @a[sort=nearest,limit=1] UUID1 run kill @s
execute as @s[tag=success] at @s run tag @s remove carrier
execute as @s[tag=success] at @s run tellraw @a[x=0] [{"selector": "@s"},{"text": " has claimed a Flag!"}]
execute as @s[tag=success] at @s run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1
execute as @s[tag=success] at @s run particle reverse_portal ~ ~ ~ 0 0 0 10 50
tag @s remove success

execute as @s[tag=!carrier,team=Black] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!BlackBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Blue] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!BlueBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Red] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!RedBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier,team=Green] at @s as @e[type=area_effect_cloud,tag=Base,sort=nearest,limit=1] as @s[tag=!GreenBase] as @a[distance=..0.01] as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=!taken] run tag @s add claiming
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tellraw @a[x=0] [{"selector": "@s"},{"text": " has taken a Flag!"}]
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run playsound item.book.page_turn block @a[x=0] ~ ~ ~ 1 1
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run particle portal ~ ~ ~ 0 0 0 10 50
execute as @s[tag=!carrier] at @s as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s add taken
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run scoreboard players operation @e[type=area_effect_cloud,sort=nearest,tag=Flag,tag=claiming,limit=1] UUID1 = @s UUID1
execute as @s[tag=!carrier] at @s if entity @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s add carrier
execute at @s as @e[type=area_effect_cloud,distance=..1.5,tag=Flag,tag=claiming] run tag @s remove claiming
execute as @s[tag=carrier] run effect give @s glowing 1 0 true