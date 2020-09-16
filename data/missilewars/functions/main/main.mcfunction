scoreboard players enable @a StopAdverts

execute as @a[scores={Game=-1}] run function missilewars:secret/main
execute in missilewars:lobby run clear @a[x=0,scores={Game=-1}]


execute in missilewars:lobby run scoreboard players set @a[x=0] Game 0
execute as @a[scores={Game=0}] run function missilewars:main/lobby_main
execute as @a store result score @s UUID1 run data get entity @s UUID[0] 1

execute as @a at @s run function missilewars:main/global_main

execute in missilewars:game1 run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game2 run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game3 run function missilewars:game_modes/normal/2teams/game_main
execute in missilewars:game41 run function missilewars:game_modes/normal/4teams/game_main
execute in missilewars:game42 run function missilewars:game_modes/normal/4teams/game_main
execute in missilewars:game43 run function missilewars:game_modes/normal/4teams/game_main

execute in missilewars:koth/game1 run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game2 run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game3 run function missilewars:game_modes/koth/2teams/game_main
execute in missilewars:koth/game41 run function missilewars:game_modes/koth/4teams/game_main
execute in missilewars:koth/game42 run function missilewars:game_modes/koth/4teams/game_main
execute in missilewars:koth/game43 run function missilewars:game_modes/koth/4teams/game_main

execute in missilewars:ctf/game1 run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game2 run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game3 run function missilewars:game_modes/ctf/2teams/game_main
execute in missilewars:ctf/game41 run function missilewars:game_modes/ctf/4teams/game_main
execute in missilewars:ctf/game42 run function missilewars:game_modes/ctf/4teams/game_main
execute in missilewars:ctf/game43 run function missilewars:game_modes/ctf/4teams/game_main

execute in missilewars:practice run function missilewars:practice/game_main

execute as @a[gamemode=adventure,scores={Game=1..},team=!Green] at @s if block ~ ~-1 ~ green_concrete run function missilewars:start/join/green
execute as @a[gamemode=adventure,scores={Game=1..},team=!Blue] at @s if block ~ ~-1 ~ blue_concrete run function missilewars:start/join/blue
execute as @a[gamemode=adventure,scores={Game=1..},team=!Black] at @s if block ~ ~-1 ~ black_concrete run function missilewars:start/join/black
execute as @a[gamemode=adventure,scores={Game=1..},team=!Red] at @s if block ~ ~-1 ~ red_concrete run function missilewars:start/join/red
execute as @a[gamemode=adventure,scores={Game=1..},team=!Spectator] at @s if block ~ ~-1 ~ light_gray_concrete run function missilewars:start/join_spectators

execute in missilewars:lobby positioned 6 104 21 if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] as @a[x=0,sort=nearest,limit=1] run function missilewars:set_lobby/overworld_tp

execute as @e[type=area_effect_cloud,tag=CustomMissileArea] at @s positioned ^ ^6 ^10 positioned ~-10 ~ ~-10 unless entity @a[dx=20,dy=10,dz=20] at @s positioned ^-10 ^6 ^ run fill ^ ^ ^8 ^20 ^4 ^13 air

execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run particle explosion ~ ~ ~
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 79s},x=0] at @s run scoreboard players remove @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount 1
execute in missilewars:lobby run kill @e[type=tnt,nbt={Fuse: 1s},x=0]

execute in missilewars:lobby run kill @e[type=item,nbt=!{Item:{id:"minecraft:tnt"}},x=0]
execute in missilewars:lobby as @e[type=item,nbt={Item:{id:"minecraft:tnt"}},x=0] run data modify entity @s PickupDelay set value 0

execute in missilewars:lobby as @a[x=0,team=Spectator] run function missilewars:main/clear_inv
execute in missilewars:lobby run team join Lobby @a[x=0,team=Spectator]

tag @a[scores={Game=1..999}] add InGame
tag @a[scores={Game=..0}] remove InGame
tag @a[scores={Game=1000}] remove InGame

execute as @e[type=tnt,nbt={Fuse: 2s}] at @s run function missilewars:main/tnt_fuse

function missilewars:new_missile/missile_loop

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
execute as @a[tag=!PlayedBefore] run scoreboard players set @s DirectionPlace 0
execute as @a[tag=!PlayedBefore] run scoreboard players set @s Adverts 0
execute as @a[tag=!PlayedBefore] run team join Lobby @s
execute as @a[tag=!PlayedBefore] at @s run scoreboard players set @s Game 0
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run function missilewars:start/give_book
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0

bossbar set missile_time visible true
bossbar set missile_time players @a[scores={Game=1..999}]

execute as @a[scores={quits=1..,Game=-1}] at @s run clear @a
execute as @a[scores={quits=1..}] at @s run function missilewars:end/leave
scoreboard players set @a quits 0