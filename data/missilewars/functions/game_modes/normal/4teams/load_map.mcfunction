function missilewars:game_modes/4teams/load_map

execute at @e[type=area_effect_cloud,tag=BlueBase,x=0] run function missilewars:maps/blue/wall
execute at @e[type=area_effect_cloud,tag=GreenBase,x=0] run function missilewars:maps/green/wall
execute at @e[type=area_effect_cloud,tag=RedBase,x=0] run function missilewars:maps/red/wall
execute at @e[type=area_effect_cloud,tag=BlackBase,x=0] run function missilewars:maps/black/wall