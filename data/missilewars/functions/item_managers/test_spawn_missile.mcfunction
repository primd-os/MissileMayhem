scoreboard players set @a[x=0] m.PlacedMissile 0
execute as @a[x=0] run scoreboard players operation @s m.PlacedMissile += @s m.PlacedTomahawk
execute as @a[x=0] run scoreboard players operation @s m.PlacedMissile += @s m.PlacedJugg
execute as @a[x=0] run scoreboard players operation @s m.PlacedMissile += @s m.PlacedLight
execute as @a[x=0] run scoreboard players operation @s m.PlacedMissile += @s m.PlacedBuster
execute as @a[x=0] run scoreboard players operation @s m.PlacedMissile += @s m.PlacedCustom
execute as @a[x=0,scores={m.PlacedMissile=1,m.DirectionPlace=1},y_rotation=-45..45] run scoreboard players set @s m.DirecToPlace 0
execute as @a[x=0,scores={m.PlacedMissile=1,m.DirectionPlace=1},y_rotation=45..135] run scoreboard players set @s m.DirecToPlace 1
execute as @a[x=0,scores={m.PlacedMissile=1,m.DirectionPlace=1},y_rotation=135..180] run scoreboard players set @s m.DirecToPlace 2
execute as @a[x=0,scores={m.PlacedMissile=1,m.DirectionPlace=1},y_rotation=-180..-135] run scoreboard players set @s m.DirecToPlace 2
execute as @a[x=0,scores={m.PlacedMissile=1,m.DirectionPlace=1},y_rotation=-135..-45] run scoreboard players set @s m.DirecToPlace 3

execute as @e[type=area_effect_cloud,x=0,tag=missile,tag=!Success] at @s run scoreboard players operation @s m.DirecToPlace = @a[x=0,scores={m.PlacedMissile=1},sort=nearest,limit=1] m.DirecToPlace

execute as @e[type=area_effect_cloud,x=0,tag=missile,tag=!Success] at @s if entity @a[x=0,scores={m.PlacedMissile=1},sort=nearest,limit=1] run function missilewars:item_managers/spawn_missile

scoreboard players set @a[x=0] m.PlacedTomahawk 0
scoreboard players set @a[x=0] m.PlacedJugg 0
scoreboard players set @a[x=0] m.PlacedLight 0
scoreboard players set @a[x=0] m.PlacedBuster 0
scoreboard players set @a[x=0] m.PlacedCustom 0