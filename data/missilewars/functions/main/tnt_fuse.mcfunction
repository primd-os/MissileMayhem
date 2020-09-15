tag @s add active
execute if entity @e[type=tnt,distance=..0.1,tag=!active,nbt={Fuse: 2s}] run data modify entity @s Fuse set value 3
tag @s remove active