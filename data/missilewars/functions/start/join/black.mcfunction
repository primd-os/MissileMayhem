team leave @s
tellraw @s {"text":"Joined Black Team!","color":"black"}
team join Black @s
item replace entity @s armor.chest with leather_chestplate{display:{color:0}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with leather_leggings{display:{color:0}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with leather_boots{display:{color:0}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
scoreboard players set @s m.DirectionPlace 1