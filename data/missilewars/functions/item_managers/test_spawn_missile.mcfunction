scoreboard players set @a[x=0] PlacedMissile 0
execute as @a[x=0] run scoreboard players operation @s PlacedMissile += @s PlacedTomohawk
execute as @a[x=0] run scoreboard players operation @s PlacedMissile += @s PlacedJuggurnaut
execute as @a[x=0] run scoreboard players operation @s PlacedMissile += @s PlacedLightning
execute as @a[x=0] run scoreboard players operation @s PlacedMissile += @s PlacedBuster
execute as @a[x=0] run scoreboard players operation @s PlacedMissile += @s PlacedCustom
execute as @a[x=0,scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-45..45] run scoreboard players set @s DirecToPlace 0
execute as @a[x=0,scores={PlacedMissile=1,DirectionPlace=1},y_rotation=45..135] run scoreboard players set @s DirecToPlace 1
execute as @a[x=0,scores={PlacedMissile=1,DirectionPlace=1},y_rotation=135..180] run scoreboard players set @s DirecToPlace 2
execute as @a[x=0,scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-180..-135] run scoreboard players set @s DirecToPlace 2
execute as @a[x=0,scores={PlacedMissile=1,DirectionPlace=1},y_rotation=-135..-45] run scoreboard players set @s DirecToPlace 3

execute as @e[type=area_effect_cloud,x=0,tag=missile] at @s run scoreboard players operation @s DirecToPlace = @a[x=0,scores={PlacedMissile=1},sort=nearest,limit=1] DirecToPlace

execute as @e[type=area_effect_cloud,x=0,tag=missile] at @s unless entity @e[type=area_effect_cloud,tag=PracticeArea,x=0] if predicate missilewars:missile_inbounds run function missilewars:item_managers/spawn_missile
execute as @e[type=area_effect_cloud,x=0,tag=missile] at @s positioned ~-43 ~-100 ~-43 if entity @e[type=area_effect_cloud,tag=PracticeArea,dx=86,dy=200,dz=86] positioned ~43 ~100 ~43 run function missilewars:item_managers/spawn_missile
execute as @e[type=area_effect_cloud,x=0,tag=missile,tag=!Success] at @s run function missilewars:item_managers/missile_fail

scoreboard players set @a[x=0] PlacedTomohawk 0
scoreboard players set @a[x=0] PlacedJuggurnaut 0
scoreboard players set @a[x=0] PlacedLightning 0
scoreboard players set @a[x=0] PlacedBuster 0
scoreboard players set @a[x=0] PlacedCustom 0