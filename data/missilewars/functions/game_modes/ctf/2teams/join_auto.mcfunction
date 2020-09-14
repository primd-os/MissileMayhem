tag @s add ActivePlayer
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0] run function missilewars:game_modes/ctf/2teams/init_arena
execute if entity @e[type=area_effect_cloud,tag=BlueBase,x=0] unless score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] Game = @a[tag=ActivePlayer,x=0,limit=1] Game run function missilewars:game_modes/ctf/2teams/init_arena
tag @s remove ActivePlayer
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers 0
execute as @a[team=Blue,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers 1
execute as @a[team=Green,x=0] run scoreboard players add @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers 1
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers < @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers run function missilewars:start/join/blue
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers >= @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers run function missilewars:start/join/green

function missilewars:game_modes/queue