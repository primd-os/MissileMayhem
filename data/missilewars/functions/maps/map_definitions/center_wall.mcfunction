execute at @e[type=marker,tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] run function missilewars:maps/purple/basic_map

fill -25 0 -2 25 100 2 white_stained_glass
execute if data entity @s data{team_type:"4 Teams"} run fill -2 0 -25 2 100 25 white_stained_glass
execute if data entity @s data{team_type:"FFA"} run fill -2 0 -25 2 100 25 white_stained_glass