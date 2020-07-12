execute as @s[team=Blue] as @e[tag=mover] at @s if score temp Constants matches 1 run setblock ~ ~ ~ blue_wool
execute as @s[team=Green] as @e[tag=mover] at @s if score temp Constants matches 1 run setblock ~ ~ ~ green_wool
execute as @s[team=Red] as @e[tag=mover] at @s if score temp Constants matches 1 run setblock ~ ~ ~ red_wool
execute as @s[team=Black] as @e[tag=mover] at @s if score temp Constants matches 1 run setblock ~ ~ ~ black_wool
execute as @s[team=Lobby] as @e[tag=mover] at @s if score temp Constants matches 1 run setblock ~ ~ ~ white_wool
execute as @s[team=Blue] as @e[tag=mover] at @s if score temp Constants matches 2 run setblock ~ ~ ~ blue_stained_glass
execute as @s[team=Green] as @e[tag=mover] at @s if score temp Constants matches 2 run setblock ~ ~ ~ green_stained_glass
execute as @s[team=Red] as @e[tag=mover] at @s if score temp Constants matches 2 run setblock ~ ~ ~ red_stained_glass
execute as @s[team=Black] as @e[tag=mover] at @s if score temp Constants matches 2 run setblock ~ ~ ~ black_stained_glass
execute as @s[team=Lobby] as @e[tag=mover] at @s if score temp Constants matches 2 run setblock ~ ~ ~ white_stained_glass
execute as @e[tag=mover] at @s if score temp Constants matches 3 run setblock ~ ~ ~ redstone_block
execute as @e[tag=mover] at @s if score temp Constants matches 4 run setblock ~ ~ ~ observer[facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 5 run setblock ~ ~ ~ observer[facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 6 run setblock ~ ~ ~ observer[facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 6 run setblock ~ ~ ~ observer[facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 6 run setblock ~ ~ ~ observer[facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 6 run setblock ~ ~ ~ observer[facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 7 run setblock ~ ~ ~ observer[facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 7 run setblock ~ ~ ~ observer[facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 7 run setblock ~ ~ ~ observer[facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 7 run setblock ~ ~ ~ observer[facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 8 run setblock ~ ~ ~ observer[facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 8 run setblock ~ ~ ~ observer[facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 8 run setblock ~ ~ ~ observer[facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 8 run setblock ~ ~ ~ observer[facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 9 run setblock ~ ~ ~ observer[facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 9 run setblock ~ ~ ~ observer[facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 9 run setblock ~ ~ ~ observer[facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 9 run setblock ~ ~ ~ observer[facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 10 run setblock ~ ~ ~ piston[facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 11 run setblock ~ ~ ~ piston[facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 12 run setblock ~ ~ ~ piston[facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 12 run setblock ~ ~ ~ piston[facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 12 run setblock ~ ~ ~ piston[facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 12 run setblock ~ ~ ~ piston[facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 13 run setblock ~ ~ ~ piston[facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 13 run setblock ~ ~ ~ piston[facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 13 run setblock ~ ~ ~ piston[facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 13 run setblock ~ ~ ~ piston[facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 14 run setblock ~ ~ ~ piston[facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 14 run setblock ~ ~ ~ piston[facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 14 run setblock ~ ~ ~ piston[facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 14 run setblock ~ ~ ~ piston[facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 15 run setblock ~ ~ ~ piston[facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 15 run setblock ~ ~ ~ piston[facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 15 run setblock ~ ~ ~ piston[facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 15 run setblock ~ ~ ~ piston[facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 16 run setblock ~ ~ ~ sticky_piston[facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 17 run setblock ~ ~ ~ sticky_piston[facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 18 run setblock ~ ~ ~ sticky_piston[facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 18 run setblock ~ ~ ~ sticky_piston[facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 18 run setblock ~ ~ ~ sticky_piston[facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 18 run setblock ~ ~ ~ sticky_piston[facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 19 run setblock ~ ~ ~ sticky_piston[facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 19 run setblock ~ ~ ~ sticky_piston[facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 19 run setblock ~ ~ ~ sticky_piston[facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 19 run setblock ~ ~ ~ sticky_piston[facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 20 run setblock ~ ~ ~ sticky_piston[facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 20 run setblock ~ ~ ~ sticky_piston[facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 20 run setblock ~ ~ ~ sticky_piston[facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 20 run setblock ~ ~ ~ sticky_piston[facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 21 run setblock ~ ~ ~ sticky_piston[facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 21 run setblock ~ ~ ~ sticky_piston[facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 21 run setblock ~ ~ ~ sticky_piston[facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 21 run setblock ~ ~ ~ sticky_piston[facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 22 run setblock ~ ~ ~ slime_block
execute as @e[tag=mover] at @s if score temp Constants matches 23 run setblock ~ ~ ~ honey_block
execute as @e[tag=mover] at @s if score temp Constants matches 24 run setblock ~ ~ ~ tnt
# execute as @e[tag=mover] at @s if score temp Constants matches 25 run setblock ~ ~ ~ air
execute as @e[tag=mover] at @s if score temp Constants matches 26 run setblock ~ ~ ~ piston_head[facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 27 run setblock ~ ~ ~ piston_head[facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 28 run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 28 run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 28 run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 28 run setblock ~ ~ ~ piston_head[facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 29 run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 29 run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 29 run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 29 run setblock ~ ~ ~ piston_head[facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 30 run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 30 run setblock ~ ~ ~ piston_head[facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 30 run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 30 run setblock ~ ~ ~ piston_head[facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 31 run setblock ~ ~ ~ piston_head[facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 31 run setblock ~ ~ ~ piston_head[facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 31 run setblock ~ ~ ~ piston_head[facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 31 run setblock ~ ~ ~ piston_head[facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 32 run setblock ~ ~ ~ piston_head[type=sticky,facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 33 run setblock ~ ~ ~ piston_head[type=sticky,facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 34 run setblock ~ ~ ~ piston_head[type=sticky,facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 34 run setblock ~ ~ ~ piston_head[type=sticky,facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 34 run setblock ~ ~ ~ piston_head[type=sticky,facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 34 run setblock ~ ~ ~ piston_head[type=sticky,facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 35 run setblock ~ ~ ~ piston_head[type=sticky,facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 35 run setblock ~ ~ ~ piston_head[type=sticky,facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 35 run setblock ~ ~ ~ piston_head[type=sticky,facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 35 run setblock ~ ~ ~ piston_head[type=sticky,facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 36 run setblock ~ ~ ~ piston_head[type=sticky,facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 36 run setblock ~ ~ ~ piston_head[type=sticky,facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 36 run setblock ~ ~ ~ piston_head[type=sticky,facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 36 run setblock ~ ~ ~ piston_head[type=sticky,facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 37 run setblock ~ ~ ~ piston_head[type=sticky,facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 37 run setblock ~ ~ ~ piston_head[type=sticky,facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 37 run setblock ~ ~ ~ piston_head[type=sticky,facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 37 run setblock ~ ~ ~ piston_head[type=sticky,facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 38 run setblock ~ ~ ~ piston[extended=true,facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 39 run setblock ~ ~ ~ piston[extended=true,facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 40 run setblock ~ ~ ~ piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 40 run setblock ~ ~ ~ piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 40 run setblock ~ ~ ~ piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 40 run setblock ~ ~ ~ piston[extended=true,facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 41 run setblock ~ ~ ~ piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 41 run setblock ~ ~ ~ piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 41 run setblock ~ ~ ~ piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 41 run setblock ~ ~ ~ piston[extended=true,facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 42 run setblock ~ ~ ~ piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 42 run setblock ~ ~ ~ piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 42 run setblock ~ ~ ~ piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 42 run setblock ~ ~ ~ piston[extended=true,facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 43 run setblock ~ ~ ~ piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 43 run setblock ~ ~ ~ piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 43 run setblock ~ ~ ~ piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 43 run setblock ~ ~ ~ piston[extended=true,facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 44 run setblock ~ ~ ~ sticky_piston[extended=true,facing=down]
execute as @e[tag=mover] at @s if score temp Constants matches 45 run setblock ~ ~ ~ sticky_piston[extended=true,facing=up]
execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 46 run setblock ~ ~ ~ sticky_piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 46 run setblock ~ ~ ~ sticky_piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 46 run setblock ~ ~ ~ sticky_piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 46 run setblock ~ ~ ~ sticky_piston[extended=true,facing=south]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 47 run setblock ~ ~ ~ sticky_piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 47 run setblock ~ ~ ~ sticky_piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 47 run setblock ~ ~ ~ sticky_piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 47 run setblock ~ ~ ~ sticky_piston[extended=true,facing=north]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 48 run setblock ~ ~ ~ sticky_piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 48 run setblock ~ ~ ~ sticky_piston[extended=true,facing=west]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 48 run setblock ~ ~ ~ sticky_piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 48 run setblock ~ ~ ~ sticky_piston[extended=true,facing=east]

execute if score @s DirecToPlace matches 0 as @e[tag=mover] at @s if score temp Constants matches 49 run setblock ~ ~ ~ sticky_piston[extended=true,facing=north]
execute if score @s DirecToPlace matches 1 as @e[tag=mover] at @s if score temp Constants matches 49 run setblock ~ ~ ~ sticky_piston[extended=true,facing=east]
execute if score @s DirecToPlace matches 2 as @e[tag=mover] at @s if score temp Constants matches 49 run setblock ~ ~ ~ sticky_piston[extended=true,facing=south]
execute if score @s DirecToPlace matches 3 as @e[tag=mover] at @s if score temp Constants matches 49 run setblock ~ ~ ~ sticky_piston[extended=true,facing=west]
execute as @e[tag=mover] at @s if score temp Constants matches 50 run setblock ~ ~ ~ stone_pressure_plate