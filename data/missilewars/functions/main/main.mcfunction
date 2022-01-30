execute in missilewars:lobby run scoreboard players set @a[x=0] m.Game 0

execute as @a at @s run function missilewars:main/global_main

execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Normal",team_type:"2 Teams"}}] at @s run function missilewars:game_modes/normal/2teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Normal",team_type:"4 Teams"}}] at @s run function missilewars:game_modes/normal/4teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Normal",team_type:"FFA"}}] at @s run function missilewars:game_modes/normal/ffa/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"KOTH",team_type:"2 Teams"}}] at @s run function missilewars:game_modes/koth/2teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"KOTH",team_type:"4 Teams"}}] at @s run function missilewars:game_modes/koth/4teams/game_main
# execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"KOTH",team_type:"FFA"}}] at @s run function missilewars:game_modes/koth/ffa/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"CTF",team_type:"2 Teams"}}] at @s run function missilewars:game_modes/ctf/2teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"CTF",team_type:"4 Teams"}}] at @s run function missilewars:game_modes/ctf/4teams/game_main
# execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"CTF",team_type:"FFA"}}] at @s run function missilewars:game_modes/ctf/ffa/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Race",team_type:"2 Teams"}}] at @s run function missilewars:game_modes/race/2teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Race",team_type:"4 Teams"}}] at @s run function missilewars:game_modes/race/4teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Race",team_type:"FFA"}}] at @s run function missilewars:game_modes/race/ffa/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Royale",team_type:"2 Teams"}}] at @s run function missilewars:game_modes/royale/2teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Royale",team_type:"4 Teams"}}] at @s run function missilewars:game_modes/royale/4teams/game_main
execute as @e[type=marker,tag=GameMarker,nbt={data:{game_mode:"Royale",team_type:"FFA"}}] at @s run function missilewars:game_modes/royale/ffa/game_main

execute in missilewars:practice run function missilewars:practice/game_main

execute if entity @e[type=marker,tag=clearMap] run function missilewars:maps/slow_clear_map_loop

execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.Green] at @s if block ~ ~-1 ~ green_concrete run function missilewars:start/join/green
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.Blue] at @s if block ~ ~-1 ~ blue_concrete run function missilewars:start/join/blue
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.Purple] at @s if block ~ ~-1 ~ purple_concrete run function missilewars:start/join/purple
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.Red] at @s if block ~ ~-1 ~ red_concrete run function missilewars:start/join/red
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.FFA] at @s if block ~ ~-1 ~ yellow_concrete run function missilewars:start/join/ffa
execute as @a[gamemode=adventure,scores={m.Game=1..},team=!m.Spectator] at @s if block ~ ~-1 ~ light_gray_concrete run function missilewars:start/join_spectators

execute in missilewars:lobby positioned 15.5 119 1.5 as @a[distance=..0.75,tag=Parkour] run advancement grant @s only missilewars:parkour
execute in missilewars:lobby positioned 15.5 119 1.5 as @a[distance=..0.75,tag=Parkour] run function hub:parkour/end_parkour

execute in missilewars:lobby positioned 50.5 106 39.5 as @a[distance=..0.75] run function hub:parkour/start
execute in missilewars:lobby positioned 66.5 112 26.5 as @a[distance=..0.75,tag=Parkour] run function hub:parkour/end_parkour

execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run playsound entity.generic.explode block @a[x=0] ~ ~ ~ 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run particle explosion ~ ~ ~
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 79s},x=0] at @s run scoreboard players remove @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] run data modify entity @s Motion set value [0D,0.20000000298023224D,0D]
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] run tag @s add m.TNTFuseReset
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 79s},x=0,tag=!m.TNTFuseReset] run data modify entity @s Motion set value [0D,0.20000000298023224D,0D]
execute in missilewars:lobby run kill @e[type=tnt,nbt={Fuse: 1s},x=0]

execute in missilewars:lobby run kill @e[type=item,x=0]

execute in missilewars:lobby as @a[x=0,team=m.Spectator] run function missilewars:main/clear_inv
execute in missilewars:lobby run team join m.Lobby @a[x=0,team=m.Spectator]

execute as @e[type=tnt,nbt={Fuse: 2s}] at @s run function missilewars:main/tnt_fuse

function missilewars:new_missile/missile_loop

execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run function missilewars:start/give_book
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run scoreboard players set @s m.DirectionPlace 0
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] run team join m.Lobby @s
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] at @s run scoreboard players set @s m.Game 0
execute in missilewars:lobby as @a[x=0,tag=!PlayedBefore] at @s run function missilewars:custom_missile/set_default
execute in missilewars:lobby run tag @a[x=0,tag=!PlayedBefore] add PlayedBefore

execute as @a[scores={GiveBook=1..}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1..}] run scoreboard players set @s GiveBook 0

execute as @a[scores={ChooseMap=-1}] run function missilewars:start/choose_map
execute as @a[scores={ChooseMap=0..6}] run scoreboard players operation @s m.MapVote = @s ChooseMap
scoreboard players set @a ChooseMap -2
execute as @a unless score @s m.MapVote = @s m.PrevMapVote at @s run function missilewars:main/switch_map_vote

bossbar set missile_time players @a[scores={m.Game=1..999}]
scoreboard players set @a m.inv_change 0

schedule function missilewars:main/main 1t replace