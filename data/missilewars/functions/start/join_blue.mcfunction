team leave @s
tellraw @s {"text":"Joined Blue Team!","color":"blue"}
team join Blue @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:3949738}} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:3949738}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:3949738}} 1
scoreboard players set @a[team=Blue] DirecToPlace 2
tag @s add BaseChooser
execute as @e[tag=BlueBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run tp @a[tag=BaseChooser] ~0 31 ~-1 180 0
execute as @e[tag=BlueBase] if score @s Game = @a[tag=BaseChooser,limit=1] Game at @s run spawnpoint @a[tag=BaseChooser] ~0 31 ~-1
tag @s remove BaseChooser