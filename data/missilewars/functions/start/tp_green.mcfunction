tag @s add BaseChooser
execute as @e[tag=GreenBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run tp @a[tag=BaseChooser] ~0 31 ~1 0 0
execute as @e[tag=GreenBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run spawnpoint @a[tag=BaseChooser] ~0 31 ~1
tag @s remove BaseChooser