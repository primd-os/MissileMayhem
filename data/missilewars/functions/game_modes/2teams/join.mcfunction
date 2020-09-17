scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers 0
scoreboard players set @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers 0
execute as @a[team=Blue,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers += @s points
execute as @a[team=Green,x=0] run scoreboard players operation @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers += @s points
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers < @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers run function missilewars:start/join/blue
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] BlueMembers >= @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] GreenMembers run function missilewars:start/join/green

function missilewars:game_modes/queue