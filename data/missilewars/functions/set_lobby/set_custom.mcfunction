execute if entity @s[y_rotation=-180] run setblock ^-1 ^2 ^3 minecraft:oak_wall_sign[facing=south]
execute if entity @s[y_rotation=-90] run setblock ^-1 ^2 ^3 minecraft:oak_wall_sign[facing=west]
execute if entity @s[y_rotation=0] run setblock ^-1 ^2 ^3 minecraft:oak_wall_sign[facing=north]
execute if entity @s[y_rotation=90] run setblock ^-1 ^2 ^3 minecraft:oak_wall_sign[facing=east]
data merge block ^-1 ^2 ^3 {Text1:'{"text":"Clear Missile","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/clear_custom"}}'}

execute if entity @s[y_rotation=-180] run setblock ^ ^2 ^3 minecraft:oak_wall_sign[facing=south]
execute if entity @s[y_rotation=-90] run setblock ^ ^2 ^3 minecraft:oak_wall_sign[facing=west]
execute if entity @s[y_rotation=0] run setblock ^ ^2 ^3 minecraft:oak_wall_sign[facing=north]
execute if entity @s[y_rotation=90] run setblock ^ ^2 ^3 minecraft:oak_wall_sign[facing=east]
data merge block ^ ^2 ^3 {Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/attempt_save_missile"}}',Text2:'{"text":"Save"}'}

execute if entity @s[y_rotation=-180] run setblock ^1 ^2 ^3 minecraft:oak_wall_sign[facing=south]
execute if entity @s[y_rotation=-90] run setblock ^1 ^2 ^3 minecraft:oak_wall_sign[facing=west]
execute if entity @s[y_rotation=0] run setblock ^1 ^2 ^3 minecraft:oak_wall_sign[facing=north]
execute if entity @s[y_rotation=90] run setblock ^1 ^2 ^3 minecraft:oak_wall_sign[facing=east]
data merge block ^1 ^2 ^3 {Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/attempt_load_missile"}}',Text2:'{"text":"Load/Build"}'}

# custom missile area
execute if entity @s[y_rotation=-180] run fill ^-8 ^ ^-1 ^8 ^ ^1 minecraft:magenta_glazed_terracotta[facing=east]
execute if entity @s[y_rotation=-90] run fill ^-8 ^ ^-1 ^8 ^ ^1 minecraft:magenta_glazed_terracotta[facing=south]
execute if entity @s[y_rotation=0] run fill ^-8 ^ ^-1 ^8 ^ ^1 minecraft:magenta_glazed_terracotta[facing=west]
execute if entity @s[y_rotation=90] run fill ^-8 ^ ^-1 ^8 ^ ^1 minecraft:magenta_glazed_terracotta[facing=north]
fill ^-8 ^-1 ^-1 ^8 ^-1 ^1 minecraft:obsidian

fill ^-8 ^ ^2 ^8 ^3 ^2 minecraft:moving_piston
fill ^-8 ^ ^-2 ^8 ^3 ^-2 minecraft:moving_piston
fill ^-9 ^ ^-1 ^-9 ^3 ^1 minecraft:moving_piston
fill ^9 ^ ^-1 ^9 ^3 ^1 minecraft:moving_piston
fill ^-8 ^4 ^-1 ^8 ^4 ^1 minecraft:moving_piston