# clear map
fill -10 90 -20 10 110 20 air
fill 10 70 -60 30 90 0 air
fill 10 70 0 30 90 60 air
fill 10 90 -60 30 110 0 air
fill 10 90 0 30 110 60 air

# starting area
fill 6 99 -20 -6 99 20 minecraft:black_concrete
fill 6 98 -20 -6 98 20 minecraft:sea_lantern

fill -7 110 20 -7 99 -20 minecraft:black_concrete

fill 0 99 -20 0 99 20 minecraft:gray_stained_glass

fill -3 99 0 3 99 0 minecraft:gray_stained_glass
setblock 0 99 0 minecraft:white_stained_glass

# signs
setblock -5 103 0 minecraft:quartz_pillar[axis=x]
fill -5 101 1 -5 102 -1 minecraft:quartz_pillar[axis=x]
fill -4 99 1 -4 99 -1 minecraft:gray_stained_glass

setblock 5 103 0 minecraft:quartz_pillar[axis=x]
fill 4 99 1 4 99 -1 minecraft:gray_stained_glass
fill 5 101 1 5 102 -1 minecraft:quartz_pillar[axis=x]
setblock -4 103 0 minecraft:oak_wall_sign[facing=east]{Text1:'{"text":""}',Text2:'{"text":"Games","underlined": true,"bold": true}',Text3:'{"text":""}',Text4:'{"text":""}'}
setblock -4 102 1 minecraft:oak_wall_sign[facing=east]{Text2:'{"text":"Game 1","clickEvent":{"action":"run_command","value":"scoreboard players set @s Game 1"}}',Text3:'{"text":"Click to Join","clickEvent":{"action":"run_command","value":"function missilewars:start/join_auto"}}'}

setblock 4 103 0 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":""}',Text2:'{"text":"Commands","underlined": true,"bold": true}',Text3:'{"text":""}',Text4:'{"text":""}'}
setblock 4 101 0 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":""}',Text2:'{"text":"Click To","clickEvent":{"action":"run_command","value":"trigger ChooseMap"}}',Text3:'{"text":"Choose Map"}',Text4:'{"text":""}'}
setblock 4 102 0 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":""}',Text2:'{"text":"Click To","clickEvent":{"action":"run_command","value":"trigger StopAdverts"}}',Text3:'{"text":"Stop Discord"}',Text4:'{"text":"Adverts"}'}
setblock 4 101 1 minecraft:oak_wall_sign[facing=west]{Text2:'{"text":"Click To"}',Text3:'{"text":"Make Custom","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_custom"}}'}
setblock 5 102 1 minecraft:ender_chest[facing=west]
setblock 4 101 -1 minecraft:oak_wall_sign[facing=west]{Text2:'{"text":"Click To"}',Text3:'{"text":"Choose Missile","clickEvent":{"action":"run_command","value":"trigger MissileSetSelect"}}',Text4:'{"text": "Set"}'}
setblock 4 102 -1 minecraft:oak_wall_sign[facing=west]{Text2:'{"text":"Click To"}',Text3:'{"text":"Get Instructions","clickEvent":{"action":"run_command","value":"trigger GiveBook"}}'}

setblock -6 101 0 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"Secret Sign!","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_secret"}}'}

fill 7 98 -20 7 110 20 minecraft:air
fill 8 97 -21 8 110 21 minecraft:air
fill 9 96 -22 9 110 22 minecraft:air
fill 10 95 -23 10 110 23 minecraft:air
fill 11 94 -24 11 110 24 minecraft:air
fill 12 93 -25 12 110 25 minecraft:air
fill 13 92 -26 13 110 26 minecraft:air
# roof
fill 38 111 37 -7 111 -38 minecraft:black_concrete

# floor
fill 1 99 5 6 99 5 minecraft:gray_stained_glass
fill 1 99 -5 6 99 -5 minecraft:gray_stained_glass
fill 7 98 -20 7 98 20 minecraft:black_concrete
fill 8 97 -21 8 97 21 minecraft:black_concrete
fill 9 96 -22 9 96 22 minecraft:black_concrete
fill 10 95 -23 10 95 23 minecraft:black_concrete
fill 11 94 -24 11 94 24 minecraft:black_concrete
fill 12 93 -25 12 93 25 minecraft:black_concrete
fill 13 92 -26 13 92 26 minecraft:black_concrete

fill 14 91 -27 14 91 27 minecraft:black_concrete
fill 15 91 -28 15 91 28 minecraft:black_concrete
fill 16 91 -29 16 91 29 minecraft:black_concrete
fill 17 91 -30 17 91 30 minecraft:black_concrete
fill 18 91 -31 18 91 31 minecraft:black_concrete
fill 19 91 -32 19 91 32 minecraft:black_concrete
fill 20 91 -33 20 91 33 minecraft:black_concrete
fill 21 91 -34 21 91 34 minecraft:black_concrete
fill 22 91 -35 22 91 35 minecraft:black_concrete
fill 23 91 -36 23 91 36 minecraft:black_concrete
fill 24 91 -37 24 91 37 minecraft:black_concrete

fill 7 97 -20 7 97 20 minecraft:sea_lantern
fill 8 96 -21 8 96 21 minecraft:sea_lantern
fill 9 95 -22 9 95 22 minecraft:sea_lantern
fill 10 94 -23 10 94 23 minecraft:sea_lantern
fill 11 93 -24 11 93 24 minecraft:sea_lantern
fill 12 92 -25 12 92 25 minecraft:sea_lantern
fill 13 91 -26 13 91 26 minecraft:sea_lantern
fill 14 90 -27 14 90 27 minecraft:sea_lantern

# walls
fill 7 98 -21 7 110 -21 minecraft:black_concrete
fill 7 98 21 7 110 21 minecraft:black_concrete
fill 8 97 -22 8 110 -22 minecraft:black_concrete
fill 8 97 22 8 110 22 minecraft:black_concrete
fill 9 96 -23 9 110 -23 minecraft:black_concrete
fill 9 96 23 9 110 23 minecraft:black_concrete
fill 10 95 -24 10 110 -24 minecraft:black_concrete
fill 10 95 24 10 110 24 minecraft:black_concrete
fill 11 94 -25 11 110 -25 minecraft:black_concrete
fill 11 94 25 11 110 25 minecraft:black_concrete
fill 12 93 -26 12 110 -26 minecraft:black_concrete
fill 12 93 26 12 110 26 minecraft:black_concrete
fill 13 92 -27 13 110 -27 minecraft:black_concrete
fill 13 92 27 13 110 27 minecraft:black_concrete

fill 14 91 -28 14 110 -28 minecraft:black_concrete
fill 14 91 28 14 110 28 minecraft:black_concrete
fill 15 91 -29 15 110 -29 minecraft:black_concrete
fill 15 91 29 15 110 29 minecraft:black_concrete
fill 16 91 -30 16 110 -30 minecraft:black_concrete
fill 16 91 30 16 110 30 minecraft:black_concrete
fill 17 91 -31 17 110 -31 minecraft:black_concrete
fill 17 91 31 17 110 31 minecraft:black_concrete
fill 18 91 -32 18 110 -32 minecraft:black_concrete
fill 18 91 32 18 110 32 minecraft:black_concrete
fill 19 91 -33 19 110 -33 minecraft:black_concrete
fill 19 91 33 19 110 33 minecraft:black_concrete
fill 20 91 -34 20 110 -34 minecraft:black_concrete
fill 20 91 34 20 110 34 minecraft:black_concrete
fill 21 91 -35 21 110 -35 minecraft:black_concrete
fill 21 91 35 21 110 35 minecraft:black_concrete
fill 22 91 -36 22 110 -36 minecraft:black_concrete
fill 22 91 36 22 110 36 minecraft:black_concrete
fill 23 91 -37 23 110 -37 minecraft:black_concrete
fill 23 91 37 23 110 37 minecraft:black_concrete
fill 24 91 -38 24 110 -38 minecraft:black_concrete
fill 24 92 -38 24 110 -38 minecraft:black_concrete

fill -6 100 21 6 110 21 minecraft:black_concrete
fill -6 100 -21 6 110 -21 minecraft:black_concrete

fill 7 98 5 18 91 5 minecraft:gray_stained_glass replace minecraft:black_concrete
fill 7 98 -5 18 91 -5 minecraft:gray_stained_glass replace minecraft:black_concrete
fill 19 91 -27 19 91 27 minecraft:gray_stained_glass replace minecraft:black_concrete

kill @e[tag=CustomMissileArea]
summon minecraft:area_effect_cloud 25 85 -27 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}
summon minecraft:area_effect_cloud 25 85 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}
summon minecraft:area_effect_cloud 25 85 27 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}

execute as @e[tag=CustomMissileArea] at @s run function missilewars:main/set_custom

fill 22 91 -38 26 91 38 minecraft:black_concrete keep
fill 14 90 -27 26 90 27 minecraft:sea_lantern
fill 39 91 -38 39 110 37 minecraft:black_concrete keep

fill 24 91 38 38 110 38 minecraft:black_concrete
fill 38 91 -39 24 110 -39 minecraft:black_concrete keep