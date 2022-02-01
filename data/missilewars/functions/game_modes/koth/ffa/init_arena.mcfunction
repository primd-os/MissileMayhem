function missilewars:game_modes/ffa/create_bases

execute positioned 0 50 0 if entity @e[tag=m.FFABase,distance=..50] run spreadplayers 0 0 20 90 under 130 false @e[tag=m.FFABase,x=0]
execute as @e[tag=m.FFABase,x=0] at @s run tp @s ~ 50 ~
execute positioned 0 50 0 if entity @e[tag=m.FFABase,distance=..50] run spreadplayers 0 0 20 90 under 130 false @e[tag=m.FFABase,x=0]
execute as @e[tag=m.FFABase,x=0] at @s run tp @s ~ 50 ~
execute positioned 0 50 0 if entity @e[tag=m.FFABase,distance=..50] run spreadplayers 0 0 20 90 under 130 false @e[tag=m.FFABase,x=0]
execute as @e[tag=m.FFABase,x=0] at @s run tp @s ~ 50 ~