fill ^-14 ^ ^ ^-14 ^25 ^15 air

# platform
fill ^-14 ^5 ^ ^14 ^5 ^14 black_concrete
fill ^2 ^6 ^2 ^-2 ^6 ^6 minecraft:blue_terracotta
fill ^-2 ^4 ^6 ^2 ^4 ^2 minecraft:blue_terracotta
fill ^-2 ^5 ^6 ^-2 ^5 ^2 minecraft:blue_terracotta
fill ^2 ^5 ^6 ^2 ^5 ^2 minecraft:blue_terracotta
fill ^1 ^5 ^2 ^-1 ^5 ^2 minecraft:blue_terracotta

execute if entity @s[y_rotation=-180] run setblock ^ ^6 ^7 minecraft:oak_wall_sign[facing=north]
execute if entity @s[y_rotation=-90] run setblock ^ ^6 ^7 minecraft:oak_wall_sign[facing=east]
execute if entity @s[y_rotation=0] run setblock ^ ^6 ^7 minecraft:oak_wall_sign[facing=south]
execute if entity @s[y_rotation=90] run setblock ^ ^6 ^7 minecraft:oak_wall_sign[facing=west]
data merge block ^ ^6 ^7 {Text1:'{"text":"Clear Missile","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/clear_custom"}}'}

execute if entity @s[y_rotation=-180] run setblock ^-2 ^8 ^3 minecraft:oak_wall_sign[facing=west]
execute if entity @s[y_rotation=-90] run setblock ^-2 ^8 ^3 minecraft:oak_wall_sign[facing=north]
execute if entity @s[y_rotation=0] run setblock ^-2 ^8 ^3 minecraft:oak_wall_sign[facing=east]
execute if entity @s[y_rotation=90] run setblock ^-2 ^8 ^3 minecraft:oak_wall_sign[facing=south]
data merge block ^-2 ^8 ^3 {Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/attempt_save_missile"}}',Text2:'{"text":"Save"}'}

execute if entity @s[y_rotation=-180] run setblock ^2 ^8 ^3 minecraft:oak_wall_sign[facing=east]
execute if entity @s[y_rotation=-90] run setblock ^2 ^8 ^3 minecraft:oak_wall_sign[facing=south]
execute if entity @s[y_rotation=0] run setblock ^2 ^8 ^3 minecraft:oak_wall_sign[facing=west]
execute if entity @s[y_rotation=90] run setblock ^2 ^8 ^3 minecraft:oak_wall_sign[facing=north]
data merge block ^2 ^8 ^3 {Text1:'{"text":"Click to","clickEvent":{"action":"run_command","value":"function missilewars:custom_missile/load_missile"}}',Text2:'{"text":"Load/Build"}'}

# custom missile area
fill ^10 ^5 ^7 ^-10 ^4 ^8 minecraft:blue_terracotta
fill ^10 ^5 ^12 ^-10 ^4 ^13 minecraft:blue_terracotta
fill ^-9 ^5 ^7 ^-10 ^4 ^13 minecraft:blue_terracotta
fill ^10 ^5 ^7 ^9 ^4 ^13 minecraft:blue_terracotta
fill ^8 ^5 ^9 ^-8 ^5 ^11 minecraft:barrier

execute if entity @s[y_rotation=-180] run fill ^8 ^7 ^14 ^-9 ^7 ^14 minecraft:magenta_glazed_terracotta[facing=south]
execute if entity @s[y_rotation=-90] run fill ^8 ^7 ^14 ^-9 ^7 ^14 minecraft:magenta_glazed_terracotta[facing=west]
execute if entity @s[y_rotation=0] run fill ^8 ^7 ^14 ^-9 ^7 ^14 minecraft:magenta_glazed_terracotta[facing=north]
execute if entity @s[y_rotation=90] run fill ^8 ^7 ^14 ^-9 ^7 ^14 minecraft:magenta_glazed_terracotta[facing=east]

fill ^ ^6 ^ ^ ^6 ^-5 gray_stained_glass