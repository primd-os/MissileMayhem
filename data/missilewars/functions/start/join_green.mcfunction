team leave @s
tellraw @s {"text":"Joined Green Team!","color":"green"}
team join Green @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:6192150}} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:6192150}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:6192150}} 1
scoreboard players set @s DirecToPlace 0
tag @s add BaseChooser
execute as @e[tag=GreenBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run tp @a[tag=BaseChooser] ~0 31 ~1 0 0
execute as @e[tag=GreenBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run spawnpoint @a[tag=BaseChooser] ~0 31 ~1
tag @s remove BaseChooser