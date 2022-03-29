effect give @s minecraft:haste 2 2 true
effect give @s[scores={hub.foodLevel=..19}] minecraft:saturation 2 0 true
scoreboard players enable @s leave
scoreboard players enable @s ClearPractice
scoreboard players enable @s heal

function missilewars:main/shared_run_main
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] actionbar {"text": "✥"}
execute unless entity @e[type=marker,tag=GameMarker,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] actionbar {"text": "↑"}

scoreboard players set @s m.Items 2
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:creeper_spawn_egg 0
execute as @s[scores={m.Game=1..,m.Items=0},x=0] at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] run function missilewars:new_missile/give/tomohawk
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:wolf_spawn_egg 0
execute as @s[scores={m.Game=1..,m.Items=0},x=0] at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:wolf_spawn_egg"}}] run function missilewars:new_missile/give/juggurnaut
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:ocelot_spawn_egg 0
execute as @s[scores={m.Game=1..,m.Items=0},x=0] at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:ocelot_spawn_egg"}}] run function missilewars:new_missile/give/lightning
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:witch_spawn_egg 0
execute as @s[scores={m.Game=1..,m.Items=0},x=0] at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:witch_spawn_egg"}}] run function missilewars:new_missile/give/shieldbuster
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:cave_spider_spawn_egg 0
execute as @s[scores={m.Game=1..,m.Items=0},x=0] at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] run function missilewars:new_missile/give/custom
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:snowball 0
execute at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:snowball"}}] run give @s[scores={m.Game=1..,m.Items=0},x=0] minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:firework_rocket 0
execute at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:firework_rocket"}}] run give @s[scores={m.Game=1..,m.Items=0},x=0] minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:tnt 0
execute at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:tnt"}}] run give @s[scores={m.Game=1..,m.Items=..1},x=0] minecraft:tnt 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:arrow 0
execute at @s anchored eyes unless entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:arrow"}}] run give @s[scores={m.Game=1..,m.Items=0},x=0] minecraft:arrow 64

execute as @s[scores={leave=1}] run function missilewars:start/join_lobby
execute as @s[scores={leave=1}] run scoreboard players set @s leave 0

execute as @s[scores={ClearPractice=1}] at @s at @e[type=marker,tag=m.PracticeArea,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~-112 {Tags: ["PracticeClear"]} 
execute as @s[scores={ClearPractice=1}] run scoreboard players set @s ClearPractice 0
execute as @s[scores={heal=1}] run effect give @s instant_health 1 10 true
execute as @s[scores={heal=1}] run scoreboard players set @s heal 0

execute as @s[scores={m.deathCheck=1..1000}] at @s run function missilewars:game_modes/death