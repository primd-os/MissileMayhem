function missilewars:maps/clear_map
scoreboard players operation Map Constants = @r[scores={Game=1..},x=0] MapVote

execute as @e[tag=Base,x=0] at @s if score Map Constants matches 7 run tp ^50 ^ ^

execute at @e[tag=BlueBase,x=0] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] run function missilewars:maps/green/map

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 0 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 0 run function missilewars:maps/green/basic_map

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 1..2 run function missilewars:maps/blue/map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 1..2 run function missilewars:maps/green/map
execute at @e[tag=Base,x=0] if score Map Constants matches 1..2 run fill ^-25 ^50 ^12 ^25 ^50 ^1 minecraft:obsidian

execute at @e[tag=Base,x=0] if score Map Constants matches 2 run fill ^-25 ^ ^8 ^25 ^49 ^4 minecraft:white_stained_glass

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 3..7 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 3..7 run function missilewars:maps/green/basic_map
execute if score Map Constants matches 3 run fill -25 0 -2 25 100 2 white_stained_glass

execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^50 ^23 ^25 ^50 ^27 white_stained_glass
execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^30 ^23 ^25 ^30 ^30 white_stained_glass
execute at @e[tag=Base,x=0] if score Map Constants matches 4 run fill ^-25 ^10 ^23 ^25 ^10 ^32 white_stained_glass

execute at @e[tag=Base,x=0] if score Map Constants matches 5 run fill ^-15 ^ ^22 ^15 ^50 ^17 minecraft:air
execute at @e[tag=Base,x=0] if score Map Constants matches 5 run fill ^-5 ^ ^17 ^5 ^50 ^11 minecraft:air

execute at @e[tag=BlueBase,x=0] if score Map Constants matches 6 run fill -2 50 ~-9 2 50 0 white_stained_glass
execute at @e[tag=GreenBase,x=0] if score Map Constants matches 6 run fill -2 50 ~9 2 50 0 white_stained_glass

fill -5 28 -5 5 30 5 white_stained_glass
fill -2 29 -2 2 30 2 black_stained_glass
fill -1 29 -1 1 30 1 obsidian