team leave @s
tellraw @s {"text":"Joined Blue Team!","color":"blue"}
team join m.Blue @s
item replace entity @s armor.chest with leather_chestplate{display:{color:4607}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with leather_leggings{display:{color:4607}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with leather_boots{display:{color:4607}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
scoreboard players set @s m.DirectionPlace 1