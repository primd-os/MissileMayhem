execute as @a store result score @s Items run clear @s minecraft:creeper_spawn_egg 0
execute if score @s Tomohawk matches 0 as @a[scores={Game=1..,Items=0},x=0] run function missilewars:new_missile/give/tomohawk
execute as @a store result score @s Items run clear @s minecraft:wolf_spawn_egg 0
execute if score @s Juggurnaut matches 0 as @a[scores={Game=1..,Items=0},x=0] run function missilewars:new_missile/give/juggurnaut
execute as @a store result score @s Items run clear @s minecraft:ocelot_spawn_egg 0
execute if score @s Lightning matches 0 as @a[scores={Game=1..,Items=0},x=0] run function missilewars:new_missile/give/lightning
execute as @a store result score @s Items run clear @s minecraft:witch_spawn_egg 0
execute if score @s Shieldbuster matches 0 as @a[scores={Game=1..,Items=0},x=0] run function missilewars:new_missile/give/shieldbuster
execute as @a store result score @s Items run clear @s minecraft:cave_spider_spawn_egg 0
execute if score @s Custom matches 0 as @a[scores={Game=1..,Items=0},x=0] run function missilewars:new_missile/give/custom
execute as @a store result score @s Items run clear @s minecraft:snowball 0
execute if score @s Shield matches 0 run give @a[scores={Game=1..,Items=0},x=0] minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
execute as @a store result score @s Items run clear @s minecraft:arrow 0
execute if score @s Arrows matches 0 run give @a[scores={Game=1..},x=0] minecraft:arrow 2
execute as @a store result score @s Items run clear @s minecraft:firework_rocket 0
execute if score @s Fireball matches 0 run give @a[scores={Game=1..,Items=0},x=0] minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}
tag @e[type=item,x=0] add processed