execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 3 run tp ^ ^ ^-5

execute at @e[type=marker,tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] run function missilewars:maps/purple/basic_map
execute at @e[type=marker,tag=FFABase,x=0] run function missilewars:maps/ffa/basic_map

execute at @e[type=marker,tag=Base,x=0] run fill ^-25 ^ ^23 ^25 ^ ^27 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] run fill ^-25 ^-20 ^23 ^25 ^-20 ^28 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] run fill ^-25 ^-40 ^23 ^25 ^-40 ^29 white_stained_glass