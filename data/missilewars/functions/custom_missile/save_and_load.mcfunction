execute as @a[x=30,y=95,z=4,dx=12,dy=6,dz=21] run tag @s add InBox
execute as @a[tag=!InBox] as @s[tag=Editor] run function missilewars:custom_missile/save_missile
execute as @a[tag=InBox] run tag @s remove InBox