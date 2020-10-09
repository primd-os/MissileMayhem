scoreboard players operation @s MissileSet += @a[x=0,scores={PlacedMissile=1},sort=nearest,limit=1] MissileSet
clone ~ ~ ~ ~ ~1 ~ 1000 0 0
execute as @s[name="Tomahawk"] run function missilewars:item_managers/spawn_tomohawk
execute as @s[name="Juggernaut"] run function missilewars:item_managers/spawn_juggurnaut
execute as @s[name="Lightning"] run function missilewars:item_managers/spawn_lightning
execute as @s[name="Shieldbuster"] run function missilewars:item_managers/spawn_shieldbuster
execute as @s[name="Custom"] as @a[x=0,scores={PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_custom

execute as @a[x=0,scores={PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/rot_missile

setblock ~ ~1 ~ minecraft:redstone_block
playsound minecraft:entity.shulker.shoot block @a[x=0] ~ ~ ~
clone 1000 0 0 1000 1 0 ~ ~ ~

kill @e[type=area_effect_cloud,tag=UUIDHolder,x=0]

execute at @a[sort=nearest,scores={PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Blue] run tag @s add Blue
execute at @a[sort=nearest,scores={PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Green] run tag @s add Green
execute at @a[sort=nearest,scores={PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Red] run tag @s add Red
execute at @a[sort=nearest,scores={PlacedMissile=1},limit=1] if entity @a[distance=..0,team=Black] run tag @s add Black

scoreboard players set @s HealthTimer 3
tag @s add Success