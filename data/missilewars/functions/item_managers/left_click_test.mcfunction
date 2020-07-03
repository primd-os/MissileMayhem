tag @a[nbt={SelectedItem:{id:"minecraft:creeper_spawn_egg"}},x=0] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:wolf_spawn_egg"}},x=0] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:ocelot_spawn_egg"}},x=0] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:witch_spawn_egg"}},x=0] add MissileSelected
tag @a[nbt={SelectedItem:{id:"minecraft:cave_spider_spawn_egg"}},x=0] add MissileSelected

scoreboard players set NumberPlayers Constants 0
scoreboard players set NumberSlimes Constants 0
execute as @e[type=minecraft:slime,x=0] run scoreboard players add NumberSlimes Constants 1
execute as @a[tag=MissileSelected,x=0] run scoreboard players add NumberPlayers Constants 1
execute if score NumberPlayers Constants > NumberSlimes Constants run summon slime 0 2 0 {NoAI:1b,NoGravity:1b,Silent:1b}
execute if score NumberPlayers Constants < NumberSlimes Constants run tag @e[type=slime,limit=1,x=0] add ToDie
tp @e[tag=ToDie] ~ 255 ~
kill @e[tag=ToDie]
tag @e[type=slime,tag=!Done,x=0] add Done
scoreboard players reset NumberPlayers Constants
scoreboard players reset NumberSlimes Constants

tag @e[x=0] remove processed
execute as @a[tag=MissileSelected,x=0] run function missilewars:item_managers/slime_tp
effect give @e[type=slime,x=0] invisibility 1 1 true
execute as @e[type=slime,x=0] store result score @s player_health run data get entity @s Health
execute if entity @e[type=slime,scores={player_health=..1},x=0] as @a[scores={DamageDealt=1..},x=0] run function missilewars:main/toggle_place
tag @e[type=slime,scores={player_health=..1},x=0] add ToDie
kill @e[type=experience_orb,x=0]
scoreboard players set @a[x=0] DamageDealt 0

tag @a[x=0] remove MissileSelected