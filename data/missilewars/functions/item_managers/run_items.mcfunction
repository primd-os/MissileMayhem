function missilewars:item_managers/fireball
function missilewars:item_managers/shield
function missilewars:item_managers/test_spawn_missile
execute as @e[type=tnt,nbt={Fuse: 80s},x=0] run data modify entity @s Motion set value [0D,0.20000000298023224D,0D]
execute as @e[type=tnt,nbt={Fuse: 80s},x=0] run tag @s add m.TNTFuseReset
execute as @e[type=tnt,nbt={Fuse: 79s},x=0,tag=!m.TNTFuseReset] run data modify entity @s Motion set value [0D,0.20000000298023224D,0D]