function missilewars:maps/clear_map
scoreboard players operation Map Constants = @r[scores={Game=1..}] MapVote

execute as @e[tag=BlueBase] at @s if score Map Constants matches 7 run tp ~50 ~ ~
execute as @e[tag=GreenBase] at @s if score Map Constants matches 7 run tp ~-50 ~ ~

execute at @e[tag=BlueBase] run function missilewars:maps/blue/map
execute at @e[tag=GreenBase] run function missilewars:maps/green/map

execute at @e[tag=BlueBase] if score Map Constants matches 0 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 0 run function missilewars:maps/green/basic_map
execute at @e[tag=BlueBase] if score Map Constants matches 1 run function missilewars:maps/blue/no_walls
execute at @e[tag=GreenBase] if score Map Constants matches 1 run function missilewars:maps/green/no_walls
execute at @e[tag=BlueBase] if score Map Constants matches 2 run function missilewars:maps/blue/small_map
execute at @e[tag=GreenBase] if score Map Constants matches 2 run function missilewars:maps/green/small_map
execute at @e[tag=BlueBase] if score Map Constants matches 3 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 3 run function missilewars:maps/green/basic_map
execute if score Map Constants matches 3 run fill -25 0 ~-2 25 50 ~2 white_stained_glass
execute at @e[tag=BlueBase] if score Map Constants matches 4 run function missilewars:maps/blue/platforms
execute at @e[tag=GreenBase] if score Map Constants matches 4 run function missilewars:maps/green/platforms
execute at @e[tag=BlueBase] if score Map Constants matches 5 run function missilewars:maps/blue/weak_center
execute at @e[tag=GreenBase] if score Map Constants matches 5 run function missilewars:maps/green/weak_center
execute at @e[tag=BlueBase] if score Map Constants matches 6 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 6 run function missilewars:maps/green/basic_map
execute at @e[tag=BlueBase] if score Map Constants matches 6 run fill -2 50 ~-9 2 50 0 white_stained_glass
execute at @e[tag=GreenBase] if score Map Constants matches 6 run fill -2 50 ~9 2 50 0 white_stained_glass
execute at @e[tag=BlueBase] if score Map Constants matches 7 run function missilewars:maps/blue/basic_map
execute at @e[tag=GreenBase] if score Map Constants matches 7 run function missilewars:maps/green/basic_map

fill -104 0 -104 104 128 -104 barrier
fill 104 0 -104 104 128 104 barrier
fill 104 0 104 -104 128 104 barrier
fill -104 0 104 -104 128 -104 barrier

fill -104 128 -104 104 128 0 barrier
fill -104 128 0 104 128 104 barrier