execute as @a store result score @s m.Items run clear @s minecraft:creeper_spawn_egg 0
execute if score @s m.Tomahawk matches 0 as @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] run function missilewars:new_missile/give/tomohawk
execute as @a store result score @s m.Items run clear @s minecraft:wolf_spawn_egg 0
execute if score @s m.Juggernaut matches 0 as @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] run function missilewars:new_missile/give/juggurnaut
execute as @a store result score @s m.Items run clear @s minecraft:ocelot_spawn_egg 0
execute if score @s m.Lightning matches 0 as @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] run function missilewars:new_missile/give/lightning
execute as @a store result score @s m.Items run clear @s minecraft:witch_spawn_egg 0
execute if score @s m.Shieldbuster matches 0 as @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] run function missilewars:new_missile/give/shieldbuster
execute as @a store result score @s m.Items run clear @s minecraft:cave_spider_spawn_egg 0
execute if score @s m.Custom matches 0 as @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] run function missilewars:new_missile/give/custom
execute as @a store result score @s m.Items run clear @s minecraft:snowball 0
execute if score @s m.Shield matches 0 run give @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
execute as @a store result score @s m.Items run clear @s minecraft:arrow 0
execute if score @s m.Arrows matches 0 run give @a[scores={m.Game=1..},x=0,gamemode=!spectator] minecraft:arrow 2
execute as @a store result score @s m.Items run clear @s minecraft:firework_rocket 0
execute if score @s m.Fireball matches 0 run give @a[scores={m.Game=1..,m.Items=0},x=0,gamemode=!spectator] minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}
tag @e[type=item,x=0] add processed