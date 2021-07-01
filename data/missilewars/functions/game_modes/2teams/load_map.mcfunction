scoreboard players operation Map m.Variables = @r[scores={m.Game=1..},team=!Spectator,x=0] MapVote

execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 5 run tp ^50 ^ ^
execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 3 run tp ^ ^ ^-5

execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/platform

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/green/basic_map

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 1 run fill ^-25 ^ ^12 ^25 ^ ^1 minecraft:obsidian

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 1 positioned ^-25 ^ ^4 run fill ~ 0 ~ ^50 ^-1 ^4 minecraft:white_stained_glass

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 2..5 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 2..5 run function missilewars:maps/green/basic_map
execute if score Map m.Variables matches 2 run fill -25 0 -2 25 100 2 white_stained_glass

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^ ^23 ^25 ^ ^27 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^-20 ^23 ^25 ^-20 ^28 white_stained_glass
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 3 run fill ^-25 ^-40 ^23 ^25 ^-40 ^29 white_stained_glass

execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 4 positioned ^-15 ^ ^17 run fill ~ 0 ~ ^30 ^ ^5 minecraft:air
execute at @e[type=marker,tag=Base,x=0] if score Map m.Variables matches 4 positioned ^-5 ^ ^11 run fill ~ 0 ~ ^10 ^ ^5 minecraft:air
scoreboard players operation @e[type=marker,tag=GameMarker,x=0] MapVote = Map m.Variables

execute as @a[x=0] run function missilewars:game_modes/teamtp