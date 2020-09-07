team leave @s
tellraw @s {"text":"Joined Red Team!","color":"red"}
team join Red @s
replaceitem entity @s armor.chest leather_chestplate{display:{color:11156540}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.legs leather_leggings{display:{color:11156540}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @s armor.feet leather_boots{display:{color:11156540}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
scoreboard players set @s DirectionPlace 1