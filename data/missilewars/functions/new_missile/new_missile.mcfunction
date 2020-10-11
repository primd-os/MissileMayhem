scoreboard players remove @s m.Tomahawk 1
scoreboard players remove @s m.Juggernaut 1
scoreboard players remove @s m.Lightning 1
scoreboard players remove @s m.Shieldbuster 1
scoreboard players remove @s m.Custom 1
scoreboard players remove @s m.Shield 1
scoreboard players remove @s m.Arrows 1
scoreboard players remove @s m.Fireball 1

function missilewars:new_missile/activate_missile

summon armor_stand 0 255 0 {Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b}
loot replace entity @e[type=armor_stand,x=0] weapon loot missilewars:new_missile
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:creeper_spawn_egg"}]}] run scoreboard players set @s m.Tomahawk 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:wolf_spawn_egg"}]}] run scoreboard players set @s m.Juggernaut 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:ocelot_spawn_egg"}]}] run scoreboard players set @s m.Lightning 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:witch_spawn_egg"}]}] run scoreboard players set @s m.Shieldbuster 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:cave_spider_spawn_egg"}]}] run scoreboard players set @s m.Custom 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:snowball"}]}] run scoreboard players set @s m.Shield 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:arrow"}]}] run scoreboard players set @s m.Arrows 3
execute if entity @e[type=armor_stand,x=0,nbt={HandItems:[{id:"minecraft:firework_rocket"}]}] run scoreboard players set @s m.Fireball 3
kill @e[type=armor_stand,x=0]

scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Tomahawk] m.QueuePos = @s m.Tomahawk
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Juggernaut] m.QueuePos = @s m.Juggernaut
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Lightning] m.QueuePos = @s m.Lightning
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Shieldbuster] m.QueuePos = @s m.Shieldbuster
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Custom] m.QueuePos = @s m.Custom
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Shield] m.QueuePos = @s m.Shield
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Arrows] m.QueuePos = @s m.Arrows
scoreboard players operation @e[type=area_effect_cloud,x=0,tag=Fireball] m.QueuePos = @s m.Fireball