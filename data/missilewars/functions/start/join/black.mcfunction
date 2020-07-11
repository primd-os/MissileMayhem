team leave @s
tellraw @s {"text":"Joined Black Team!","color":"black"}
team join Black @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:0}} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:0}} 1
replaceitem entity @s armor.feet leather_boots{display:{color:0}} 1
scoreboard players set @s DirecToPlace 3
scoreboard players set @s DirectionPlace 0
function missilewars:start/tp/black