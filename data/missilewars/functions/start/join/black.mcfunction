team leave @s
tellraw @s {"text":"Joined Black Team!","color":"black"}
team join Black @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:0}, Unbreakable:1b} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:0}, Unbreakable:1b} 1
replaceitem entity @s armor.feet leather_boots{display:{color:0}, Unbreakable:1b} 1
scoreboard players set @s DirectionPlace 1