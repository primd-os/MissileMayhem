tag @s add active
execute if entity @e[type=tnt,distance=..0.2,tag=!active,nbt={Fuse: 2s}] run data modify entity @s Fuse set value 3
tag @s remove active