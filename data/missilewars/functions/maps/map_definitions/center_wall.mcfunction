execute if data entity @s data{team_type:"FFA"} at @e[type=marker,tag=m.FFABase,x=0] run fill ~-8 0 ~-8 ~8 100 ~-8 white_stained_glass
execute if data entity @s data{team_type:"FFA"} at @e[type=marker,tag=m.FFABase,x=0] run fill ~8 0 ~-8 ~8 100 ~8 white_stained_glass
execute if data entity @s data{team_type:"FFA"} at @e[type=marker,tag=m.FFABase,x=0] run fill ~8 0 ~8 ~-8 100 ~8 white_stained_glass
execute if data entity @s data{team_type:"FFA"} at @e[type=marker,tag=m.FFABase,x=0] run fill ~-8 0 ~8 ~-8 100 ~-8 white_stained_glass

execute at @e[type=marker,tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] run function missilewars:maps/purple/basic_map
execute at @e[type=marker,tag=m.FFAFullBase,x=0] run function missilewars:maps/full_ffa/basic_map
execute at @e[type=marker,tag=m.FFABase,x=0] run function missilewars:maps/ffa/basic_map

execute unless data entity @s data{team_type:"FFA"} run fill -25 0 -2 25 100 2 white_stained_glass
execute if data entity @s data{team_type:"4 Teams"} run fill -2 0 -25 2 100 25 white_stained_glass