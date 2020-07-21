execute as @e[type=item, tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,nbt=!{Item:{id:"minecraft:tnt"}},nbt=!{Item:{id:"minecraft:crossbow"}},nbt=!{Item:{id:"minecraft:bow"}},nbt=!{Item:{id:"minecraft:snowball"}},nbt=!{Item:{id:"minecraft:arrow"}},nbt=!{Item:{id:"minecraft:firework_rocket"}},nbt=!{Item:{id:"minecraft:creeper_spawn_egg"}},nbt=!{Item:{id:"minecraft:wolf_spawn_egg"}},nbt=!{Item:{id:"minecraft:ocelot_spawn_egg"}},nbt=!{Item:{id:"minecraft:witch_spawn_egg"}},nbt=!{Item:{id:"minecraft:cave_spider_spawn_egg"}},nbt=!{Item:{id:"minecraft:shulker_box"}}] run kill @s
execute as @e[type=minecraft:item,tag=!processed,nbt=!{Item:{id:"minecraft:tnt"}}] run data merge entity @s {PickupDelay:0}
execute at @e[type=minecraft:item,tag=!processed,nbt=!{Item:{id:"minecraft:tnt"}}] as @a[sort=nearest,x=0,limit=1] run function missilewars:main/toggle_place
tag @e[type=item] add processed

function missilewars:item_managers/bow


execute if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] at @s run function missilewars:item_managers/reset_custom
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shulker_box"}]}] at @s run function missilewars:item_managers/reset_custom