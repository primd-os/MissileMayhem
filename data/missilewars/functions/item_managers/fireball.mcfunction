execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s run summon fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,0.0,0.0]}
execute as @e[type=firework_rocket,nbt={ShotAtAngle:0b}] at @s run summon fireball ~ ~1 ~ {ExplosionPower:1,direction:[0.0,0.0,0.0]}

execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] direction[0] double 0.000000001 run data get entity @s Motion[0] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] direction[1] double 0.000000001 run data get entity @s Motion[1] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] direction[2] double 0.000000001 run data get entity @s Motion[2] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] power[0] double 0.000000000075 run data get entity @s Motion[0] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] power[1] double 0.000000000075 run data get entity @s Motion[1] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] power[2] double 0.000000000075 run data get entity @s Motion[2] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] Motion[0] double 0.000000001 run data get entity @s Motion[0] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] Motion[1] double 0.000000001 run data get entity @s Motion[1] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] Motion[2] double 0.000000001 run data get entity @s Motion[2] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] Rotation[0] double 0.000000001 run data get entity @s Rotation[0] 1000000000
execute as @e[type=firework_rocket,nbt={ShotAtAngle:1b}] at @s store result entity @e[type=fireball,limit=1,sort=nearest] Rotation[1] double 0.000000001 run data get entity @s Rotation[1] 1000000000

execute as @e[type=firework_rocket] at @s run kill @s