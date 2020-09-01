scoreboard players enable @a StopAdverts
execute in missilewars:lobby run scoreboard players set @a[x=0] Game 0
execute as @a[scores={Game=0}] run function missilewars:main/lobby_main
execute as @a store result score @s UUID1 run data get entity @s UUID[0] 1

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

execute in missilewars:lobby positioned 6 104 21 if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] as @a[x=0,sort=nearest,limit=1] run function missilewars:set_lobby/overworld_tp

advancement revoke @a[tag=!worldly] everything

execute as @e[tag=CustomMissileArea] at @s positioned ^-10 ^6 ^ unless entity @a[dx=13,dy=10,dz=20] run fill ^ ^ ^8 ^20 ^4 ^13 air

execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 1s},x=0] at @s run particle explosion ~ ~ ~
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] run scoreboard players remove @e[tag=CustomMissileArea,sort=nearest,limit=1] tntCount 1
execute in missilewars:lobby as @e[type=tnt,nbt={Fuse: 80s},x=0] run give @a[x=0,tag=Editor,sort=nearest,limit=1] tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 1
execute in missilewars:lobby run kill @e[type=tnt,nbt={Fuse: 1s},x=0]

execute in missilewars:lobby run kill @e[type=item,nbt=!{Item:{id:"minecraft:tnt"}},x=0]
execute in missilewars:lobby as @e[type=item,nbt={Item:{id:"minecraft:tnt"}},x=0] run data modify entity @s PickupDelay set value 0
execute in missilewars:lobby run clear @a[x=0,team=Spectator]
execute in missilewars:lobby run team join Lobby @a[x=0,team=Spectator]

function missilewars:item_managers/run_items
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
bossbar set missile_time players @a[scores={Game=1..}]

execute as @a[scores={quits=1..}] at @s run function missilewars:end/leave
scoreboard players set @a quits 0