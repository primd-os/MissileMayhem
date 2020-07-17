team leave @s
tellraw @s {"text":"Joined Green Team!","color":"green"}
team join Green @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:6192150}, Unbreakable:1b} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:6192150}, Unbreakable:1b} 1
replaceitem entity @s armor.feet leather_boots{display:{color:6192150}, Unbreakable:1b} 1
scoreboard players set @s DirecToPlace 0
scoreboard players set @s DirectionPlace 0
function missilewars:start/tp/green