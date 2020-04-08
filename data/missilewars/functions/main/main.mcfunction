execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:tnt"}}] unless entity @s[nbt={Item:{id:"minecraft:crossbow"}}] unless entity @s[nbt={Item:{id:"minecraft:snowball"}}] unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:firework_rocket"}}] unless entity @s[nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:wolf_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:ocelot_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:witch_spawn_egg"}}] run kill @s
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow"}}] run data merge entity @s {PickupDelay:0}

execute as @e at @s run kill @s[dy=-10,y=0]

function missilewars:main/arrow
function missilewars:main/fireball
function missilewars:main/shield
function missilewars:main/spawn_missile
execute unless score Ending Constants matches 1 if score Running Constants matches 1 run function missilewars:end/check_end_game

execute if block -4 101 1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 0
execute if block -4 101 0 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 1
execute if block -4 101 -1 minecraft:stone_button[powered=true] run scoreboard players set Map Constants 2

execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run team leave @s
execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run tellraw @s {"text":"Joined Blue Team!","color":"blue"}
execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run team join Blue @s
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run team leave @s
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run tellraw @s {"text":"Joined Green Team!","color":"green"}
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run team join Green @s
execute as @e[scores={Start=1}] run function missilewars:start/new_game
execute as @e[scores={Start=1}] run scoreboard players set @s Start 0

scoreboard players enable @a Start
effect give @a minecraft:haste 1000000 2 true