tag @s add BaseChooser
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run tp @a[tag=BaseChooser] ~0 51 ~-1 180 0
execute as @e[type=area_effect_cloud,tag=BlueBase,x=0] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s facing 0 52 0 run spawnpoint @a[tag=BaseChooser] ~0 51 ~-1 ~
tag @s remove BaseChooser