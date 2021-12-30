scoreboard players operation Map m.Variables = @r[scores={m.Game=1..},team=!Spectator,x=0] m.MapVote

execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 5 run tp ^50 ^ ^
execute as @e[type=marker,tag=Base,x=0] at @s if score Map m.Variables matches 3 run tp ^ ^ ^-5

execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/platform

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] if score Map m.Variables matches 0 run function missilewars:maps/purple/basic_map

execute if score Map m.Variables matches 1 run function missilewars:maps/map_definitions/small

execute at @e[type=marker,tag=BlueBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/blue/basic_map
execute at @e[type=marker,tag=GreenBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/green/basic_map
execute at @e[type=marker,tag=RedBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/red/basic_map
execute at @e[type=marker,tag=PurpleBase,x=0] if score Map m.Variables matches 2..6 run function missilewars:maps/purple/basic_map

execute if score Map m.Variables matches 2 run function missilewars:maps/map_definitions/center_wall

execute if score Map m.Variables matches 3 run function missilewars:maps/map_definitions/platforms

execute if score Map m.Variables matches 6 run function missilewars:maps/map_definitions/towers


execute if score Map m.Variables matches 4 run function missilewars:maps/map_definitions/weak_center

scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.MapVote = Map m.Variables

execute as @a[x=0] run function missilewars:game_modes/teamtp