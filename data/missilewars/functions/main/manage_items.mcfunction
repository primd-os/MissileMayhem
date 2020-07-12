execute as @e[type=item, tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] unless entity @s[nbt={Item:{id:"minecraft:tnt"}}] unless entity @s[nbt={Item:{id:"minecraft:crossbow"}}] unless entity @s[nbt={Item:{id:"minecraft:snowball"}}] unless entity @s[nbt={Item:{id:"minecraft:arrow"}}] unless entity @s[nbt={Item:{id:"minecraft:firework_rocket"}}] unless entity @s[nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:wolf_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:ocelot_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:witch_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] unless entity @s[nbt={Item:{id:"minecraft:shulker_box"}}] run kill @s
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:crossbow"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:shulker_box"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:creeper_spawn_egg"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:wolf_spawn_egg"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:ocelot_spawn_egg"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:witch_spawn_egg"}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=minecraft:item,tag=!processed,nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] run data merge entity @s {PickupDelay:0}
tag @e[type=item] add processed


execute if entity @s[nbt={SelectedItem:{id:"minecraft:shulker_box"}}] at @s run function missilewars:item_managers/reset_custom
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shulker_box"}]}] at @s run function missilewars:item_managers/reset_custom