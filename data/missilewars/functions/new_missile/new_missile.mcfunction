scoreboard players remove TomahawkQueue m.Variables 1
scoreboard players remove JuggernautQueue m.Variables 1
scoreboard players remove LightningQueue m.Variables 1
scoreboard players remove ShieldbusterQueue m.Variables 1
scoreboard players remove CustomQueue m.Variables 1
scoreboard players remove ShieldQueue m.Variables 1
scoreboard players remove ArrowsQueue m.Variables 1
scoreboard players remove FireballQueue m.Variables 1

function missilewars:new_missile/activate_missile

summon armor_stand 0 255 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["m.QueueLooter"]}
loot replace entity @e[type=armor_stand,x=0] weapon loot missilewars:new_missile
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:creeper_spawn_egg"}]}] store result score TomahawkQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:creeper_spawn_egg"}]}] run data modify storage missilewars:queue queue append value "Tomahawk"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:wolf_spawn_egg"}]}] store result score JuggernautQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:wolf_spawn_egg"}]}] run data modify storage missilewars:queue queue append value "Juggernaut"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:ocelot_spawn_egg"}]}] store result score LightningQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:ocelot_spawn_egg"}]}] run data modify storage missilewars:queue queue append value "Lightning"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:witch_spawn_egg"}]}] store result score ShieldbusterQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:witch_spawn_egg"}]}] run data modify storage missilewars:queue queue append value "Shieldbuster"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:cave_spider_spawn_egg"}]}] store result score CustomQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:cave_spider_spawn_egg"}]}] run data modify storage missilewars:queue queue append value "Custom"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:snowball"}]}] store result score ShieldQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:snowball"}]}] run data modify storage missilewars:queue queue append value "Shield"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:arrow"}]}] store result score ArrowsQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:arrow"}]}] run data modify storage missilewars:queue queue append value "Arrows"
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:firework_rocket"}]}] store result score FireballQueue m.Variables run data get storage missilewars:queue queue
execute if entity @e[type=armor_stand,x=0,tag=m.QueueLooter,nbt={HandItems:[{id:"minecraft:firework_rocket"}]}] run data modify storage missilewars:queue queue append value "Fireball"
kill @e[type=armor_stand,x=0,tag=m.QueueLooter]
data remove storage missilewars:queue queue[0]