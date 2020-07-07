execute as @e[tag=missile] at @s run clone ~ ~ ~ ~ ~1 ~ 1000 0 0
scoreboard players set @a PlacedMissile 0
execute as @a run scoreboard players operation @s PlacedMissile += @s PlacedTomohawk
execute as @a run scoreboard players operation @s PlacedMissile += @s PlacedJuggurnaut
execute as @a run scoreboard players operation @s PlacedMissile += @s PlacedLightning
execute as @a run scoreboard players operation @s PlacedMissile += @s PlacedBuster
execute as @a run scoreboard players operation @s PlacedMissile += @s PlacedCustom
execute as @a[scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-45..45] run scoreboard players set @s DirecToPlace 0
execute as @a[scores={PlacedMissile=1,DirectionPlace=1},y_rotation=45..135] run scoreboard players set @s DirecToPlace 1
execute as @a[scores={PlacedMissile=1,DirectionPlace=1},y_rotation=135..180] run scoreboard players set @s DirecToPlace 2
execute as @a[scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-180..-135] run scoreboard players set @s DirecToPlace 2
execute as @a[scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-135..-45] run scoreboard players set @s DirecToPlace 3

execute as @e[tag=missile, name="Tomohawk"] at @s as @a[scores={PlacedTomohawk=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_tomohawk
execute as @e[tag=missile, name="Juggurnaut"] at @s as @a[scores={PlacedJuggurnaut=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_juggurnaut
execute as @e[tag=missile, name="Lightning"] at @s as @a[scores={PlacedLightning=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_lightning
execute as @e[tag=missile, name="Shieldbuster"] at @s as @a[scores={PlacedBuster=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_shieldbuster
execute as @e[tag=missile, name="Custom"] at @s as @a[scores={PlacedCustom=1},sort=nearest,limit=1] run function missilewars:custom_missile/shoot_missile/shoot_missile

execute as @e[tag=missile] at @s as @a[scores={PlacedMissile=1,PlacedCustom=0},sort=nearest,limit=1] run function missilewars:item_managers/rot_missile
execute as @e[tag=missile] run schedule function missilewars:item_managers/color_missile 1t append

scoreboard players set @a PlacedTomohawk 0
scoreboard players set @a PlacedJuggurnaut 0
scoreboard players set @a PlacedLightning 0
scoreboard players set @a PlacedBuster 0
scoreboard players set @a PlacedCustom 0

execute as @e[tag=missile] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[tag=missile] at @s run playsound minecraft:entity.shulker.shoot block @a[x=0] ~ ~ ~
execute as @e[tag=missile] at @s run clone 1000 0 0 1000 1 0 ~ ~ ~
forceload remove 1000 0