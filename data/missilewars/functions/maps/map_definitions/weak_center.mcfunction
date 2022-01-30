execute at @e[type=marker,tag=BlueBase,x=0] run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] run function missilewars:maps/purple/basic_map
execute at @e[type=marker,tag=m.FFAFullBase,x=0] run function missilewars:maps/full_ffa/basic_map
execute at @e[type=marker,tag=m.FFABase,x=0] run function missilewars:maps/ffa/basic_map

execute at @e[type=marker,tag=Base,x=0] positioned ^-15 ^ ^17 run fill ~ 0 ~ ^30 ^ ^5 minecraft:air
execute at @e[type=marker,tag=Base,x=0] positioned ^-5 ^ ^11 run fill ~ 0 ~ ^10 ^ ^5 minecraft:air

execute at @e[type=marker,tag=m.FFABase,x=0] run fill ~-1 0 ~-5 ~1 ~ ~5 minecraft:air
execute at @e[type=marker,tag=m.FFABase,x=0] run fill ~-5 0 ~-1 ~5 ~ ~1 minecraft:air