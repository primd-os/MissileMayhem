function missilewars:maps/clear_map

execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map
execute at @e[tag=RedBase,x=0] run function missilewars:maps/red/map
execute at @e[tag=BlackBase,x=0] run function missilewars:maps/black/map

execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[tag=BlackBase,x=0] run function missilewars:maps/black/basic_map