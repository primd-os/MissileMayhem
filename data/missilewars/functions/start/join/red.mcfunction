team leave @s
tellraw @s {"text":"Joined Red Team!","color":"red"}
team join m.Red @s
item replace entity @s armor.chest with leather_chestplate{display:{color:16711680}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.legs with leather_leggings{display:{color:16711680}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
item replace entity @s armor.feet with leather_boots{display:{color:16711680}, Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:feather_falling",lvl:9s}]} 1
scoreboard players set @s m.DirectionPlace 1