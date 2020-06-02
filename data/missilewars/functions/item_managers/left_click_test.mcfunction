tag @a[nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}}] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:wolf_spawn_egg"}}] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:ocelot_spawn_egg"}}] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:witch_spawn_egg"}}] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}}] add MissileSelected

scoreboard players set NumberPlayers Constants 0
scoreboard players set NumberSlimes Constants 0
execute as @e[type=minecraft:slime] run scoreboard players add NumberSlimes Constants 1
execute as @a[tag=MissileSelected] run scoreboard players add NumberPlayers Constants 1
execute if score NumberPlayers Constants > NumberSlimes Constants run summon slime 0 2 0 {NoAI:1b,NoGravity:1b,Silent:1b}
execute if score NumberPlayers Constants < NumberSlimes Constants run tag @e[type=slime,limit=1] add ToDie
tp @e[tag=ToDie] ~ 255 ~
kill @e[tag=ToDie]
tag @e[type=slime,tag=!Done] add Done
scoreboard players reset NumberPlayers Constants
scoreboard players reset NumberSlimes Constants

tag @e remove processed
execute as @a[tag=MissileSelected] run function missilewars:item_managers/slime_tp
effect give @e[type=slime] invisibility 1 1 true
execute as @e[type=slime] store result score @s player_health run data get entity @s Health
execute if entity @e[type=slime,scores={player_health=..1}] as @a[scores={DamageDealt=1..}] run function missilewars:main/toggle_place
tag @e[type=slime,scores={player_health=..1}] add ToDie
kill @e[type=experience_orb]
scoreboard players set @a DamageDealt 0

tag @a remove MissileSelected