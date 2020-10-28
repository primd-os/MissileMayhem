execute as @e[x=0,type=item, tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[x=0,type=item, tag=!processed] store result score @s m.UUID1 run data get entity @s Owner[0]
execute as @e[x=0,type=item,nbt=!{Item:{id:"minecraft:crossbow"}},nbt=!{Item:{id:"minecraft:bow"}},nbt=!{Item:{id:"minecraft:snowball"}},nbt=!{Item:{id:"minecraft:arrow"}},nbt=!{Item:{id:"minecraft:firework_rocket"}},nbt=!{Item:{id:"minecraft:creeper_spawn_egg"}},nbt=!{Item:{id:"minecraft:wolf_spawn_egg"}},nbt=!{Item:{id:"minecraft:ocelot_spawn_egg"}},nbt=!{Item:{id:"minecraft:witch_spawn_egg"}},nbt=!{Item:{id:"minecraft:cave_spider_spawn_egg"}}] run kill @s
execute as @e[x=0,type=minecraft:item,tag=!processed] run data merge entity @s {PickupDelay:0}
execute as @e[x=0,type=minecraft:item,tag=!processed] at @s run tp @s @p
tag @s add Active
execute if score @s m.dropItem matches 1.. run function missilewars:main/toggle_place
execute as @e[x=0,type=minecraft:item,tag=!processed] if score @s m.UUID1 = @a[x=0,tag=Active,limit=1] m.UUID1 run tag @s add processed
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1,scores={m.GameState=2..}] run title @s times 0 3 0
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1,scores={m.GameState=2..}] run title @s[gamemode=!spectator] title {"text": ""}
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 1 run title @s[gamemode=!spectator] subtitle {"text": "✥"}
execute unless entity @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1,scores={m.GameState=2..}] if score @s m.DirectionPlace matches 0 run title @s[gamemode=!spectator] subtitle {"text": "↑"}
execute if score @e[type=area_effect_cloud,tag=BlueBase,x=0,limit=1] m.GameState matches 1 run title @s actionbar ["",{"text":"1-"},{"selector":"@e[scores={m.QueuePos=1},x=0]"},{"text":" 2-"},{"selector":"@e[scores={m.QueuePos=2},x=0]"},{"text":" 3-"},{"selector":"@e[scores={m.QueuePos=3},x=0]"}]
tag @s remove Active

function missilewars:item_managers/bow

scoreboard players operation tnt m.Variables = @s m.tntBroke
execute unless score @s m.Game matches 1000 run function missilewars:custom_missile/give_tnt
scoreboard players set @s m.tntBroke 0

execute store result score fallDistance m.Variables run data get entity @s FallDistance
execute if score fallDistance m.Variables matches 0 run scoreboard players operation damage m.Variables = @s m.fallDistance
execute if score fallDistance m.Variables matches 0 run scoreboard players operation damage m.Variables /= fallScale m.Constants
execute at @s if score fallDistance m.Variables matches 0 unless score damage m.Variables matches 0 if block ~ ~-1 ~ slime_block if score @s m.shifting matches 1 as @s[gamemode=!creative] run function missilewars:game_modes/deal_damage
execute at @s if score fallDistance m.Variables matches 0 unless score damage m.Variables matches 0 unless block ~ ~-1 ~ slime_block as @s[gamemode=!creative] run function missilewars:game_modes/deal_damage
execute store result score @s m.fallDistance as @s[tag=!Died] run data get entity @s FallDistance
execute if score fallDistance m.Variables matches 0 run tag @s remove Died
scoreboard players set @s m.shifting 0