execute as @a[x=30,y=95,z=5,dx=10,dy=6,dz=19] run tag @s add InBox
execute as @a[tag=!InBox] as @s[tag=Editor] run function missilewars:custom_missile/save_missile
execute as @a[tag=InBox] run tag @s remove InBox