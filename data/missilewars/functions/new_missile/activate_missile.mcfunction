execute if score Tomohawk missiles matches 0 run give @a[team=Blue] minecraft:creeper_spawn_egg{display:{Name:'{"text":"Blue Tomohawk"}'},EntityTag:{CustomName:"\"Blue Tomohawk\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Tomohawk missiles matches 0 run give @a[team=Green] minecraft:creeper_spawn_egg{display:{Name:'{"text":"Green Tomohawk"}'},EntityTag:{CustomName:"\"Green Tomohawk\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Juggurnaut missiles matches 0 run give @a[team=Blue] minecraft:wolf_spawn_egg{display:{Name:'{"text":"Blue Juggurnaut"}'},EntityTag:{CustomName:"\"Blue Juggurnaut\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Juggurnaut missiles matches 0 run give @a[team=Green] minecraft:wolf_spawn_egg{display:{Name:'{"text":"Green Juggurnaut"}'},EntityTag:{CustomName:"\"Green Juggurnaut\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Lightning missiles matches 0 run give @a[team=Blue] minecraft:ocelot_spawn_egg{display:{Name:'{"text":"Blue Lightning"}'},EntityTag:{CustomName:"\"Blue Lightning\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Lightning missiles matches 0 run give @a[team=Green] minecraft:ocelot_spawn_egg{display:{Name:'{"text":"Green Lightning"}'},EntityTag:{CustomName:"\"Green Lightning\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Shieldbuster missiles matches 0 run give @a[team=Blue] minecraft:witch_spawn_egg{display:{Name:'{"text":"Blue Shieldbuster"}'},EntityTag:{CustomName:"\"Blue Shieldbuster\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Shieldbuster missiles matches 0 run give @a[team=Green] minecraft:witch_spawn_egg{display:{Name:'{"text":"Green Shieldbuster"}'},EntityTag:{CustomName:"\"Green Shieldbuster\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Custom missiles matches 0 run give @a[team=Blue] minecraft:cave_spider_spawn_egg{display:{Name:'{"text":"Blue Custom"}'},EntityTag:{CustomName:"\"Blue Custom\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Custom missiles matches 0 run give @a[team=Green] minecraft:cave_spider_spawn_egg{display:{Name:'{"text":"Green Custom"}'},EntityTag:{CustomName:"\"Green Custom\"",Particle:"block air",id:"minecraft:area_effect_cloud",Tags:["missile"]}}
execute if score Shield missiles matches 0 run give @a[team=Blue] minecraft:snowball{display:{Name:'{"text":"Blue Shield"}'}}
execute if score Shield missiles matches 0 run give @a[team=Green] minecraft:snowball{display:{Name:'{"text":"Green Shield"}'}}
execute if score Arrows missiles matches 0 run give @a[team=!Spectator] minecraft:arrow 2
execute if score Fireball missiles matches 0 run give @a[team=!Spectator] minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}

execute if score Tomohawk missiles matches -1..0 run scoreboard players reset Tomohawk missiles 
execute if score Juggurnaut missiles matches -1..0 run scoreboard players reset Juggurnaut missiles 
execute if score Lightning missiles matches -1..0 run scoreboard players reset Lightning missiles 
execute if score Shieldbuster missiles matches -1..0 run scoreboard players reset Shieldbuster missiles 
execute if score Custom missiles matches -1..0 run scoreboard players reset Custom missiles 
execute if score Shield missiles matches -1..0 run scoreboard players reset Shield missiles 
execute if score Arrows missiles matches -1..0 run scoreboard players reset Arrows missiles 
execute if score Fireball missiles matches -1..0 run scoreboard players reset Fireball missiles 