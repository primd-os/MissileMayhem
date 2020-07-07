execute as @a store result score @s Items run clear @s minecraft:creeper_spawn_egg 0
execute if score Tomohawk missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:creeper_spawn_egg{display:{Name:'{"text":"Tomohawk"}'},EntityTag:{CustomName:'"Tomohawk"',Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute as @a store result score @s Items run clear @s minecraft:wolf_spawn_egg 0
execute if score Juggurnaut missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:wolf_spawn_egg{display:{Name:'{"text":"Juggurnaut"}'},EntityTag:{CustomName:'"Juggurnaut"',Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute as @a store result score @s Items run clear @s minecraft:ocelot_spawn_egg 0
execute if score Lightning missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:ocelot_spawn_egg{display:{Name:'{"text":"Lightning"}'},EntityTag:{CustomName:'"Lightning"',Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute as @a store result score @s Items run clear @s minecraft:witch_spawn_egg 0
execute if score Shieldbuster missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:witch_spawn_egg{display:{Name:'{"text":"Shieldbuster"}'},EntityTag:{CustomName:'"Shieldbuster"',Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute as @a store result score @s Items run clear @s minecraft:cave_spider_spawn_egg 0
execute if score Custom missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:cave_spider_spawn_egg{display:{Name:'{"text":"Custom"}'},EntityTag:{CustomName:'"Custom"',Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute as @a store result score @s Items run clear @s minecraft:snowball 0
execute if score Shield missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
execute as @a store result score @s Items run clear @s minecraft:arrow 0
execute if score Arrows missiles matches 0 run give @a[scores={Game=1..}] minecraft:arrow 2
execute as @a store result score @s Items run clear @s minecraft:firework_rocket 0
execute if score Fireball missiles matches 0 run give @a[scores={Game=1..,Items=0}] minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}

execute if score Tomohawk missiles matches -1..0 run scoreboard players reset Tomohawk missiles 
execute if score Juggurnaut missiles matches -1..0 run scoreboard players reset Juggurnaut missiles 
execute if score Lightning missiles matches -1..0 run scoreboard players reset Lightning missiles 
execute if score Shieldbuster missiles matches -1..0 run scoreboard players reset Shieldbuster missiles 
execute if score Custom missiles matches -1..0 run scoreboard players reset Custom missiles 
execute if score Shield missiles matches -1..0 run scoreboard players reset Shield missiles 
execute if score Arrows missiles matches -1..0 run scoreboard players reset Arrows missiles 
execute if score Fireball missiles matches -1..0 run scoreboard players reset Fireball missiles 