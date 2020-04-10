execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:tnt"}}] unless entity @s[nbt={Item:{id:"minecraft:crossbow"}}] unless entity @s[nbt={Item:{id:"minecraft:snowball"}}] unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:firework_rocket"}}] unless entity @s[nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:wolf_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:ocelot_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:witch_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:minecraft:cave_spider_spawn_egg"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}] run data merge entity @s {PickupDelay:0}

execute as @e at @s run kill @s[dy=-10,y=0]

function missilewars:main/arrow
function missilewars:main/fireball
function missilewars:main/shield
function missilewars:main/spawn_missile
execute unless score Ending Constants matches 1 if score Running Constants matches 1 run function missilewars:end/check_end_game

execute if block -4 101 1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 0
execute if block -4 101 1 minecraft:stone_button[powered=true] run function missilewars:maps/load_map
execute if block -4 101 1 minecraft:stone_button[powered=true] run setblock -4 101 1 stone_button[facing=east]
execute if block -4 101 0 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 1
execute if block -4 101 0 minecraft:stone_button[powered=true] run function missilewars:maps/load_map
execute if block -4 101 0 minecraft:stone_button[powered=true] run setblock -4 101 0 stone_button[facing=east]
execute if block -4 101 -1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 2
execute if block -4 101 -1 minecraft:stone_button[powered=true] run function missilewars:maps/load_map
execute if block -4 101 -1 minecraft:stone_button[powered=true] run setblock -4 101 -1 stone_button[facing=east]

execute if block 31 97 13 minecraft:stone_button[powered=true] positioned 31 97 13 as @a[sort=nearest,limit=1] run function missilewars:custom_missile/save_missile
setblock 31 97 13 stone_button[facing=south]
setblock 31 98 13 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Save"}'}

execute if block 31 97 17 minecraft:stone_button[powered=true] positioned 31 97 17 as @a[sort=nearest,limit=1] run function missilewars:custom_missile/load_missile
setblock 31 97 17 stone_button[facing=north]
setblock 31 98 17 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Load"}'}

execute as @a[x=30,y=95,z=5,dx=10,dy=6,dz=19] run tag @s add InBox
execute as @a[tag=!InBox] as @s[tag=Editor] run function missilewars:custom_missile/save_missile
execute as @a[tag=InBox] run tag @s remove InBox

setblock 27 95 15 minecraft:obsidian
fill 30 96 17 34 96 13 minecraft:obsidian
fill 35 95 17 35 95 13 minecraft:obsidian
fill 36 95 24 36 95 5 minecraft:obsidian
fill 40 95 24 40 95 5 minecraft:obsidian
fill 37 95 5 39 95 5 minecraft:obsidian
fill 37 95 24 39 95 24 minecraft:obsidian

execute if block 0 100 0 minecraft:stone_button[powered=true] positioned 0 100 0 as @a[sort=nearest,limit=1] run trigger Start
execute if block 0 100 0 minecraft:stone_button[powered=true] run setblock 0 100 0 minecraft:stone_button[face=floor]

execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run team leave @s
execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run tellraw @s {"text":"Joined Blue Team!","color":"blue"}
execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run team join Blue @s
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run team leave @s
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run tellraw @s {"text":"Joined Green Team!","color":"green"}
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run team join Green @s
execute as @e[scores={Start=1}] unless entity @a[team=!Spectator] run tellraw @a {"text":"Cannot start, no players.","color":"red"}
execute as @e[scores={Start=1}] if entity @a[team=!Spectator] run function missilewars:start/new_game
execute as @e[scores={Start=1}] run scoreboard players set @s Start 0

scoreboard players enable @a Start
scoreboard players enable @a StopAdverts

execute if score Running Constants matches 1 run effect give @a minecraft:haste 2 2 true
execute if score Running Constants matches 0 run effect give @a minecraft:haste 2 255 true

execute if score Running Constants matches 0 run scoreboard players set @a deathCheck 0
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run schedule function missilewars:main/turn_around 2t
execute as @a[scores={deathCheck=1..1000},team=Blue,tag=!dead] at @s run tag @s add dead