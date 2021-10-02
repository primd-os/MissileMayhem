scoreboard players operation Map m.Variables = @r[scores={m.Game=1..},team=!Spectator,x=0] m.MapVote

execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 5 run tp ^50 ^ ^
execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 3 run tp ^ ^ ^-5

execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/platform

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/purple/basic_map

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 1 run fill ^-25 ^ ^12 ^25 ^ ^1 minecraft:obsidian

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 1 positioned ^-25 ^ ^4 run fill ~ 0 ~ ^50 ^-1 ^4 minecraft:white_stained_glass

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/purple/basic_map
execute if score Map m.Variables matches 2 run fill -25 0 -2 25 100 2 white_stained_glass
execute if score Map m.Variables matches 2 run fill -2 0 -25 2 100 25 white_stained_glass

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^ ^23 ^25 ^ ^27 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^-20 ^23 ^25 ^-20 ^30 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^-40 ^23 ^25 ^-40 ^32 white_stained_glass

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^11 ^8 ^12 ^17 ^8 ^18 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^15 ^1 ^14 ^15 ^8 ^16 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^13 ^1 ^14 ^13 ^8 ^16 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^14 ^1 ^15 ^14 ^8 ^15 ladder[facing= west ]
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^-11 ^8 ^12 ^-17 ^8 ^18 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^-15 ^1 ^14 ^-15 ^8 ^16 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^-13 ^1 ^14 ^-13 ^8 ^16 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 6 run fill ^-14 ^1 ^15 ^-14 ^8 ^15 ladder[facing= west ]

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 4 run fill ^-15 ^ ^22 ^15 ^50 ^17 minecraft:air
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 4 run fill ^-5 ^ ^17 ^5 ^50 ^11 minecraft:air
scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.MapVote = Map m.Variables

execute as @a[x=0] run function missilewars:game_modes/teamtp