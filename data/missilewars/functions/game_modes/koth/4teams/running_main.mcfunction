function missilewars:game_modes/force_gamemode

execute as @s[scores={deathCheck=1..1000}] at @s run function missilewars:game_modes/death

execute at @e[type=area_effect_cloud,tag=Base,x=0] run particle minecraft:angry_villager ^85 ^75 ^-10 20 50 20 1 20 force
execute at @e[type=area_effect_cloud,tag=Base,x=0] positioned ^85 ^ ^-10 positioned ~-50 0 ~-50 as @s[dx=100,dy=255,dz=100] run tag @s add InDamage
effect give @s[tag=InDamage] wither 1 4
effect give @s[tag=InDamage] hunger 1 4
effect give @s[nbt={SelectedItem:{id:"minecraft:magenta_wool"}}] minecraft:haste 1 10 true
effect give @s[tag=!InDamage] minecraft:haste 2 2 true
effect give @s[tag=!InDamage,nbt=!{foodLevel:20}] minecraft:saturation 1 0 true
tag @s remove InDamage

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