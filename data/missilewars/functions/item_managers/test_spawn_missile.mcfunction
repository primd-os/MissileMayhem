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

execute as @e[tag=missile] at @s run scoreboard players operation @s DirecToPlace = @a[scores={PlacedMissile=1},sort=nearest,limit=1] DirecToPlace

execute as @e[tag=missile] at @s if predicate missilewars:missile_inbounds run function missilewars:item_managers/spawn_missile
execute as @e[tag=missile] at @s unless predicate missilewars:missile_inbounds run function missilewars:item_managers/missile_fail

scoreboard players set @a PlacedTomohawk 0
scoreboard players set @a PlacedJuggurnaut 0
scoreboard players set @a PlacedLightning 0
scoreboard players set @a PlacedBuster 0
scoreboard players set @a PlacedCustom 0