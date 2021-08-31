execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:creeper_spawn_egg 0
execute if score TomahawkQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run function missilewars:new_missile/give/tomohawk
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:wolf_spawn_egg 0
execute if score JuggernautQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run function missilewars:new_missile/give/juggurnaut
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:ocelot_spawn_egg 0
execute if score LightningQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run function missilewars:new_missile/give/lightning
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:witch_spawn_egg 0
execute if score ShieldbusterQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run function missilewars:new_missile/give/shieldbuster
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:cave_spider_spawn_egg 0
execute if score CustomQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run function missilewars:new_missile/give/custom
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:snowball 0
execute if score ShieldQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run give @s minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:arrow 0
execute if score ArrowsQueue m.Variables matches 0 as @a[scores={m.Game=1..},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run give @s minecraft:arrow 2
execute as @a[scores={m.Game=1..}] store result score @s m.Items run clear @s minecraft:firework_rocket 0
execute if score FireballQueue m.Variables matches 0 as @a[scores={m.Game=1..,m.Items=0},team=!Spectator] at @s unless entity @e[type=marker,x=0,tag=GameMarker,scores={m.GameState=0}] run give @s minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}
tag @e[type=item] add processed