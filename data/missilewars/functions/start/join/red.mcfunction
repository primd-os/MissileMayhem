team leave @s
tellraw @s {"text":"Joined Red Team!","color":"red"}
team join Red @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:11156540}} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:11156540}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:11156540}} 1
scoreboard players set @s DirecToPlace 1
scoreboard players set @s DirectionPlace 0
function missilewars:start/tp/red