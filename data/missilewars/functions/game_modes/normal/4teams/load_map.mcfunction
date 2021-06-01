function missilewars:game_modes/4teams/load_map

execute at @e[type=marker,tag=BlueBase,x=0] run function missilewars:maps/blue/wall
execute at @e[type=marker,tag=GreenBase,x=0] run function missilewars:maps/green/wall
execute at @e[type=marker,tag=RedBase,x=0] run function missilewars:maps/red/wall
execute at @e[type=marker,tag=BlackBase,x=0] run function missilewars:maps/black/wall