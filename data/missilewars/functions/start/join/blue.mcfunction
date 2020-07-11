team leave @s
tellraw @s {"text":"Joined Blue Team!","color":"blue"}
team join Blue @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:3949738}} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:3949738}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:3949738}} 1
scoreboard players set @s DirecToPlace 2
scoreboard players set @s DirectionPlace 0
function missilewars:start/tp/blue