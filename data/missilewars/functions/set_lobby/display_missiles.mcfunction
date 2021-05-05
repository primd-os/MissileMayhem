execute positioned 30 113 0 run function missilewars:item_managers/spawn_shieldbuster
execute positioned 60 113 0 run function missilewars:item_managers/spawn_lightning
execute positioned 30 113 -18 run function missilewars:item_managers/spawn_juggurnaut
execute positioned 60 113 -18 run function missilewars:item_managers/spawn_tomohawk
execute positioned 30 113 0 run fill ~-3 ~-1 ~ ~3 ~-7 ~-18 air
execute positioned 60 113 0 run fill ~-3 ~-1 ~ ~3 ~-8 ~-18 air
execute positioned 30 113 -18 run fill ~-3 ~-1 ~ ~3 ~-7 ~-18 air
execute positioned 60 113 -18 run fill ~-3 ~-1 ~ ~3 ~-8 ~-18 air
execute positioned 30 113 0 positioned ~ ~1 ~ run setblock ~ ~ ~ redstone_block
execute positioned 60 113 0 positioned ~ ~1 ~ run setblock ~ ~ ~ redstone_block
execute positioned 30 113 -18 positioned ~ ~1 ~ run setblock ~ ~ ~ redstone_block
execute positioned 60 113 -18 positioned ~ ~1 ~ run setblock ~ ~ ~ redstone_block
execute positioned 30 113 0 run fill ~ ~ ~ ~ ~1 ~ air
execute positioned 60 113 0 run fill ~ ~ ~ ~ ~1 ~ air
execute positioned 30 113 -18 run fill ~ ~ ~ ~ ~1 ~ air
execute positioned 60 113 -18 run fill ~ ~ ~ ~ ~1 ~ air
execute positioned 30 113 0 run fill ~-3 ~-1 ~ ~3 ~-7 ~-18 moving_piston replace air
execute positioned 60 113 0 run fill ~-3 ~-1 ~ ~3 ~-8 ~-18 moving_piston replace air
execute positioned 30 113 -18 run fill ~-3 ~-1 ~ ~3 ~-7 ~-18 moving_piston replace air
execute positioned 60 113 -18 run fill ~-3 ~-1 ~ ~3 ~-8 ~-18 moving_piston replace air