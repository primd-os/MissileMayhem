scoreboard players operation @s m.MissileSet = @a[distance=0..,scores={m.PlacedMissile=1},sort=nearest,limit=1] m.MissileSet
clone ~ ~ ~ ~ ~1 ~ ~ 250 ~ replace
execute as @s[name="Tomahawk"] run function missilewars:item_managers/spawn_tomohawk
execute as @s[name="Juggernaut"] run function missilewars:item_managers/spawn_juggurnaut
execute as @s[name="Lightning"] run function missilewars:item_managers/spawn_lightning
execute as @s[name="Shieldbuster"] run function missilewars:item_managers/spawn_shieldbuster
execute as @s[name="Custom"] as @a[distance=0..,scores={m.PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_custom

execute as @a[distance=0..,scores={m.PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/rot_missile

execute store result score PosX m.Variables run data get entity @s Pos[0]
execute store result score PosY m.Variables run data get entity @s Pos[1]
execute store result score PosZ m.Variables run data get entity @s Pos[2]
execute store result score PosX2 m.Variables run data get block ~ ~ ~ posX
execute store result score PosY2 m.Variables run data get block ~ ~ ~ posY
execute store result score PosZ2 m.Variables run data get block ~ ~ ~ posZ
scoreboard players operation PosX m.Variables += PosX2 m.Variables
scoreboard players operation PosY m.Variables += PosY2 m.Variables
scoreboard players operation PosZ m.Variables += PosZ2 m.Variables

scoreboard players set PosX2 m.Variables 0
scoreboard players set PosZ2 m.Variables 0
execute store result score PosX2 m.Variables run data get entity @e[distance=0..,tag=PracticeArea,sort=nearest,limit=1] Pos[0]
execute store result score PosZ2 m.Variables run data get entity @e[distance=0..,tag=PracticeArea,sort=nearest,limit=1] Pos[2]
scoreboard players operation PosX m.Variables -= PosX2 m.Variables
scoreboard players operation PosZ m.Variables -= PosZ2 m.Variables

execute if score PosX m.Variables matches -112..111 if score PosY m.Variables matches 0..127 if score PosZ m.Variables matches -112..111 run tag @s add m.missileStartInBounds

setblock ~ 255 ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"",posX:0,posY:1,posZ:0}
data modify block ~ 255 ~ name set from block ~ ~ ~ name
setblock ~ 254 ~ minecraft:redstone_block

execute store result score PosX2 m.Variables run data get block ~ 255 ~ sizeX
execute store result score PosY2 m.Variables run data get block ~ 255 ~ sizeY
execute store result score PosZ2 m.Variables run data get block ~ 255 ~ sizeZ
execute as @a[distance=0..,scores={m.PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/rot_size
execute if score PosX2 m.Variables matches 1.. run scoreboard players remove PosX2 m.Variables 1
execute if score PosX2 m.Variables matches ..-1 run scoreboard players add PosX2 m.Variables 1
scoreboard players remove PosY2 m.Variables 1
execute if score PosZ2 m.Variables matches 1.. run scoreboard players remove PosZ2 m.Variables 1
execute if score PosZ2 m.Variables matches ..-1 run scoreboard players add PosZ2 m.Variables 1
scoreboard players operation PosX m.Variables += PosX2 m.Variables
scoreboard players operation PosY m.Variables += PosY2 m.Variables
scoreboard players operation PosZ m.Variables += PosZ2 m.Variables
execute if score PosX m.Variables matches -112..111 if score PosY m.Variables matches 0..127 if score PosZ m.Variables matches -112..111 run tag @s add m.missileEndInBounds

fill ~ 254 ~ ~ 255 ~ air

tag @s[tag=m.missileStartInBounds,tag=m.missileEndInBounds] add m.missileSuccess

execute as @s[tag=m.missileSuccess] run setblock ~ ~1 ~ observer[powered=true,facing=up]
execute as @s[tag=m.missileSuccess] run setblock ~ ~1 ~ observer[powered=true,facing=up]
execute as @s[tag=m.missileSuccess] run playsound minecraft:entity.shulker.shoot block @a[x=0] ~ ~ ~
execute as @s[tag=!m.missileSuccess] run function missilewars:item_managers/missile_fail
clone ~ 250 ~ ~ 251 ~ ~ ~ ~ replace move

kill @e[type=marker,tag=UUIDHolder,x=0]

execute at @a[sort=nearest,scores={m.PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Blue] run tag @s add Blue
execute at @a[sort=nearest,scores={m.PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Green] run tag @s add Green
execute at @a[sort=nearest,scores={m.PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Red] run tag @s add Red
execute at @a[sort=nearest,scores={m.PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Purple] run tag @s add Black

tag @s add Success
function missilewars:item_managers/color_missile
kill @s