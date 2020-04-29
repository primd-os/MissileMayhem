xp set @a 100 levels
effect give @a minecraft:haste 2 255 true
scoreboard players enable @a Start
scoreboard players enable @a AutoTeam
scoreboard players enable @a JoinSpectators
scoreboard players enable @a ChooseMap
scoreboard players enable @a GiveBook
scoreboard players enable @a MissileSetSelect

gamemode adventure @a[tag=!Editor,gamemode=!creative]
gamemode survival @a[tag=Editor,gamemode=!creative]

bossbar set missile_time visible false

function missilewars:start/missile_set_display

kill @e[type=item]

execute as @a[scores={AutoTeam=1}] run function missilewars:start/join_auto
execute as @a[scores={AutoTeam=1}] run scoreboard players set @s AutoTeam 0

execute as @a[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @a[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @a[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @a[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute as @a[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @a[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0

execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run particle explosion ~ ~ ~
kill @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23]

execute as @a[tag=Editor] store result score @s Items run clear @s iron_pickaxe 0
execute as @a[tag=Editor] if score @s Items matches 0 run give @s iron_pickaxe{Unbreakable:1b} 1
execute as @a[tag=Editor] store result score @s Items run clear @s white_wool 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s white_wool 1
execute as @a[tag=Editor] store result score @s Items run clear @s glass 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s glass 1
execute as @a[tag=Editor] store result score @s Items run clear @s redstone_block 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s redstone_block 1
execute as @a[tag=Editor] store result score @s Items run clear @s observer 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s observer 1
execute as @a[tag=Editor] store result score @s Items run clear @s piston 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s piston 1
execute as @a[tag=Editor] store result score @s Items run clear @s sticky_piston 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s sticky_piston 1
execute as @a[tag=Editor] store result score @s Items run clear @s slime_block 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s slime_block 1
execute as @a[tag=Editor] store result score @s Items run clear @s honey_block 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s honey_block 1
execute as @a[tag=Editor] store result score @s Items run clear @s tnt 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s tnt 1
execute as @a[tag=Editor] store result score @s Items run clear @s stone_pressure_plate 0
execute as @a[tag=Editor] if score @s Items matches 0..63 run give @s stone_pressure_plate 1

execute as @a[tag=!PlayedBefore] run function missilewars:start/give_book
tag @a[tag=!PlayedBefore] add PlayedBefore
execute as @a[scores={GiveBook=1}] run tag @s remove PlayedBefore
execute as @a[scores={GiveBook=1}] run scoreboard players set @s GiveBook 0


execute unless block -4 100 0 lectern run function missilewars:main/set_lecturn

scoreboard players set @a deathCheck 0

function missilewars:start/check_start

execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run function missilewars:start/join_blue
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run function missilewars:start/join_green

function missilewars:maps/select_map

function missilewars:custom_missile/save_and_load

execute if score Running Constants matches 0 run function missilewars:main/set_map