execute as @a[scores={m.Game=-1}] run function missilewars:secret/main
execute in missilewars:lobby as @a[x=0,scores={m.Game=-1}] run function missilewars:secret/clear

execute in missilewars:lobby run scoreboard players set @a[x=0] m.Game 0
execute as @a[scores={m.Game=0}] at @s run function missilewars:main/lobby_main
execute as @a unless score @s m.UUID1 matches -2147483648..2147483647 store result score @s m.UUID1 run data get entity @s UUID[0] 1

execute as @a at @s run function missilewars:main/global_main

execute in missilewars:game1 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game2 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game3 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game41 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/4teams/game_main
execute in missilewars:game42 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/4teams/game_main
execute in missilewars:game43 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/normal/4teams/game_main

execute in missilewars:koth/game1 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game2 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game3 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game41 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/4teams/game_main
execute in missilewars:koth/game42 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/4teams/game_main
execute in missilewars:koth/game43 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/koth/4teams/game_main

execute in missilewars:ctf/game1 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game2 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game3 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game41 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/4teams/game_main
execute in missilewars:ctf/game42 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/4teams/game_main
execute in missilewars:ctf/game43 as @e[type=marker,tag=GameMarker,x=0] run function missilewars:game_modes/ctf/4teams/game_main

execute in missilewars:practice run function missilewars:practice/game_main


bossbar set minecraft:missile_time name  ["",{"text":"1-"},{"nbt":"queue[0]","storage":"missilewars:queue"},{"text":" 2-"},{"nbt":"queue[1]","storage":"missilewars:queue"},{"text":" 3-"},{"nbt":"queue[2]","storage":"missilewars:queue"}]

execute if entity @e[type=marker,tag=clearMap] run function missilewars:maps/slow_clear_map_loop
execute as @a[tag=reset_health] run function missilewars:game_modes/reset_health

execute as @a[gamemode=adventure,scores={m.Game=1..},team=!Green] at @s if block ~ ~-1 ~ green_concrete run function missilewars:start/join/green
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!Blue] at @s if block ~ ~-1 ~ blue_concrete run function missilewars:start/join/blue
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!Purple] at @s if block ~ ~-1 ~ purple_concrete run function missilewars:start/join/purple
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!Red] at @s if block ~ ~-1 ~ red_concrete run function missilewars:start/join/red
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!Spectator] at @s if block ~ ~-1 ~ light_gray_concrete run function missilewars:start/join_spectators

execute in missilewars:lobby positioned 15.5 119 1.5 as @a[distance=..0.75,tag=Parkour] run advancement grant @s only missilewars:parkour
execute in missilewars:lobby positioned 15.5 119 1.5 as @a[distance=..0.75,tag=Parkour] run function hub:parkour/end_parkour

execute in missilewars:lobby positioned 50.5 106 39.5 as @a[distance=..0.75] run function hub:parkour/start
execute in missilewars:lobby positioned 66.5 112 26.5 as @a[distance=..0.75,tag=Parkour] run function hub:parkour/end_parkour

execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run playsound entity.generic.explode block @a[x=0] ~ ~ ~ 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run particle explosion ~ ~ ~
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] at @s run scoreboard players remove @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] run data modify entity @s Motion set value [0D,0.20000000298023224D,0D]
execute in missilewars:lobby run kill @e[type=tnt,nbt={Fuse: 1s},x=0]

execute in missilewars:lobby run kill @e[type=item,x=0]

execute in missilewars:lobby as @a[x=0,team=Spectator] run function missilewars:main/clear_inv
execute in missilewars:lobby run team join Lobby @a[x=0,team=Spectator]
execute in missilewars:lobby as @e[type=marker,tag=CustomMissileArea,x=0] at @s if entity @a[distance=..15] unless entity @a[tag=InBox,distance=..10] run fill ^-8 ^1 ^-1 ^8 ^3 ^1 air

tag @a[scores={m.Game=1..999}] add InGame
tag @a[scores={m.Game=..0}] remove InGame
tag @a[scores={m.Game=1000}] remove InGame

execute as @e[type=tnt,nbt={Fuse: 2s}] at @s run function missilewars:main/tnt_fuse

function missilewars:new_missile/missile_loop

execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run function missilewars:start/give_book
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run scoreboard players set @s m.DirectionPlace 0
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run team join Lobby @s
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] at @s run scoreboard players set @s m.Game 0
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] at @s run function missilewars:custom_missile/set_default
execute in missilewars:lobby run tag @a[x=0,tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0

bossbar set missile_time visible true
bossbar set missile_time players @a[scores={m.Game=1..999}]
scoreboard players set @a m.inv_change 0