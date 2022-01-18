scoreboard players operation Map m.Variables = @r[scores={m.Game=1..},team=!m.Spectator,x=0] m.MapVote

execute if score Map m.Variables matches 0 run function missilewars:maps/map_definitions/normal
execute if score Map m.Variables matches 1 run function missilewars:maps/map_definitions/small
execute if score Map m.Variables matches 2 run function missilewars:maps/map_definitions/center_wall
execute if score Map m.Variables matches 3 run function missilewars:maps/map_definitions/platforms
execute if score Map m.Variables matches 4 run function missilewars:maps/map_definitions/weak_center
execute if score Map m.Variables matches 5 run function missilewars:maps/map_definitions/diagonal
execute if score Map m.Variables matches 6 run function missilewars:maps/map_definitions/towers

execute at @e[type=marker,tag=Base,x=0] run function missilewars:maps/platform

scoreboard players operation @e[type=marker,tag=GameMarker,x=0] m.MapVote = Map m.Variables

execute as @a[x=0] run function missilewars:game_modes/teamtp