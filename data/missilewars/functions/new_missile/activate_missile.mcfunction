execute if score Tomohawk missiles matches 0 run give @a[team=Blue] minecraft:creeper_spawn_egg{display:{Name:'{"text":"Blue Tomohawk"}'}}
execute if score Tomohawk missiles matches 0 run give @a[team=Green] minecraft:creeper_spawn_egg{display:{Name:'{"text":"Green Tomohawk"}'}}
execute if score Juggurnaut missiles matches 0 run give @a[team=Blue] minecraft:wolf_spawn_egg{display:{Name:'{"text":"Blue Juggurnaut"}'}}
execute if score Juggurnaut missiles matches 0 run give @a[team=Green] minecraft:wolf_spawn_egg{display:{Name:'{"text":"Green Juggurnaut"}'}}
execute if score Lightning missiles matches 0 run give @a[team=Blue] minecraft:ocelot_spawn_egg{display:{Name:'{"text":"Blue Lightning"}'}}
execute if score Lightning missiles matches 0 run give @a[team=Green] minecraft:ocelot_spawn_egg{display:{Name:'{"text":"Green Lightning"}'}}
execute if score Shieldbuster missiles matches 0 run give @a[team=Blue] minecraft:witch_spawn_egg{display:{Name:'{"text":"Blue Shieldbuster"}'}}
execute if score Shieldbuster missiles matches 0 run give @a[team=Green] minecraft:witch_spawn_egg{display:{Name:'{"text":"Green Shieldbuster"}'}}
execute if score Shield missiles matches 0 run give @a minecraft:snowball
execute if score Arrows missiles matches 0 run give @a minecraft:arrow 3
execute if score Fireball missiles matches 0 run give @a minecraft:firework_rocket

execute if score Tomohawk missiles matches -1..0 run scoreboard players reset Tomohawk missiles 
execute if score Juggurnaut missiles matches -1..0 run scoreboard players reset Juggurnaut missiles 
execute if score Lightning missiles matches -1..0 run scoreboard players reset Lightning missiles 
execute if score Shieldbuster missiles matches -1..0 run scoreboard players reset Shieldbuster missiles 
execute if score Custom missiles matches -1..0 run scoreboard players reset Custom missiles 
execute if score Shield missiles matches -1..0 run scoreboard players reset Shield missiles 
execute if score Arrows missiles matches -1..0 run scoreboard players reset Arrows missiles 
execute if score Fireball missiles matches -1..0 run scoreboard players reset Fireball missiles 