function missilewars:maps/clear_map
scoreboard players operation Map Constants = @r[scores={Game=1..},x=0] MapVote

execute as @e[tag=Base,x=0] at @s if score Map Constants matches 7 run tp ^50 ^ ^

execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 0 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 0 run function missilewars:maps/green/basic_map

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 1..2 run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 1..2 run function missilewars:maps/green/map
execute at @e[tag=Base,x=0] if score Map Constants matches 1..2 run fill ^-25 ^ ^12 ^25 ^ ^1 minecraft:obsidian

execute at @e[tag=Base,x=0] if score Map Constants matches 2 positioned ^-25 ^ ^4 run fill ~ 0 ~ ^50 ^-1 ^4 minecraft:white_stained_glass

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 3..7 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 3..7 run function missilewars:maps/green/basic_map
execute if score Map Constants matches 3 run fill -25 0 -2 25 100 2 white_stained_glass

execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^ ^23 ^25 ^ ^27 white_stained_glass
execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^-20 ^23 ^25 ^-20 ^30 white_stained_glass
execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^-40 ^23 ^25 ^-40 ^32 white_stained_glass

execute at @e[tag=Base,x=0] if score Map Constants matches 5 positioned ^-15 ^ ^17 run fill ~ 0 ~ ^30 ^ ^5 minecraft:air
execute at @e[tag=Base,x=0] if score Map Constants matches 5 positioned ^-5 ^ ^11 run fill ~ 0 ~ ^10 ^ ^5 minecraft:air

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 6 run fill -2 ~ ~-9 2 ~ 0 white_stained_glass
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 6 run fill -2 ~ ~9 2 ~ 0 white_stained_glass

execute as @a[x=0] run function missilewars:game_modes/teamtp