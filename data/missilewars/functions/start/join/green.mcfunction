team leave @s
tellraw @s {"text":"Joined Green Team!","color":"green"}
team join m.Green @s
item replace entity @s armor.chest with leather_chestplate{display:{color:6192150}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with leather_leggings{display:{color:6192150}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with leather_boots{display:{color:6192150}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
scoreboard players set @s m.DirectionPlace 1