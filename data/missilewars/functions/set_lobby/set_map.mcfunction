# clear map
fill -10 90 -80 10 110 -20 air
fill -10 90 -20 10 110 20 air
fill -10 90 20 10 110 80 air
fill 10 70 -60 30 90 0 air
fill 10 70 0 30 90 60 air
fill 10 90 -60 30 110 0 air
fill 10 90 0 30 110 60 air

# map area
# floor
fill 6 99 20 -6 99 76 minecraft:black_concrete
fill 6 98 20 -6 98 76 minecraft:sea_lantern
fill -1 99 20 0 99 76 minecraft:gray_stained_glass

# ceiling
fill 6 111 20 -6 111 76 minecraft:black_concrete

# walls
fill 6 99 76 -7 111 76 minecraft:black_concrete
fill -7 99 20 -7 111 76 minecraft:black_concrete
fill 6 99 20 6 111 76 minecraft:black_concrete

# mini maps
execute positioned 4.5 100.00 26.5 run function missilewars:set_lobby/minimaps/basic
execute positioned 4.5 100.00 26.5 run setblock ~-2 ~ ~ minecraft:dark_oak_sign[rotation=4]{Text1:"",Text2:'{"text":"Normal","color":"white"}'}
execute positioned 4.5 100.00 40.5 run function missilewars:set_lobby/minimaps/no_walls
execute positioned 4.5 100.00 40.5 run setblock ~-2 ~ ~ minecraft:dark_oak_sign[rotation=4]{Text1:"",Text2:'{"text":"No Walls","color":"white"}'}
execute positioned 4.5 100.00 54.5 run function missilewars:set_lobby/minimaps/small
execute positioned 4.5 100.00 54.5 run setblock ~-2 ~ ~ minecraft:dark_oak_sign[rotation=4]{Text1:"",Text2:'{"text":"Small","color":"white"}'}
execute positioned 4.5 100.00 68.5 run function missilewars:set_lobby/minimaps/center_wall
execute positioned 4.5 100.00 68.5 run setblock ~-2 ~ ~ minecraft:dark_oak_sign[rotation=4]{Text1:"",Text2:'{"text":"Center Wall","color":"white"}'}
execute positioned -4.5 100.00 26.5 run function missilewars:set_lobby/minimaps/platforms
execute positioned -4.5 100.00 26.5 run setblock ~2 ~ ~ minecraft:dark_oak_sign[rotation=12]{Text1:"",Text2:'{"text":"Platforms","color":"white"}'}
execute positioned -4.5 100.00 40.5 run function missilewars:set_lobby/minimaps/weak_center
execute positioned -4.5 100.00 40.5 run setblock ~2 ~ ~ minecraft:dark_oak_sign[rotation=12]{Text1:"",Text2:'{"text":"Weak Center","color":"white"}'}
execute positioned -4.5 100.00 54.5 run function missilewars:set_lobby/minimaps/bridge
execute positioned -4.5 100.00 54.5 run setblock ~2 ~ ~ minecraft:dark_oak_sign[rotation=12]{Text1:"",Text2:'{"text":"Bridge","color":"white"}'}
execute positioned -4.5 100.00 68.5 run function missilewars:set_lobby/minimaps/diagonal
execute positioned -4.5 100.00 68.5 run setblock ~2 ~ ~ minecraft:dark_oak_sign[rotation=12]{Text1:"",Text2:'{"text":"Diagonal","color":"white"}'}

# secrets
setblock -6 101 26 minecraft:barrier
setblock 5 103 54 minecraft:barrier
setblock 5 103 40 minecraft:barrier

# letters
setblock 1 110 18 minecraft:black_wall_banner[facing=north]{Base:0,Patterns:[{Pattern:tt,Color:0},{Pattern:tts,Color:15},{Pattern:ls,Color:0},{Pattern:rs,Color:0},{Pattern:bo,Color:15}]}
setblock 0 110 18 minecraft:black_wall_banner[facing=north]{Base:0,Patterns:[{Pattern:rs,Color:0},{Pattern:ls,Color:0},{Pattern:ms,Color:0},{Pattern:ts,Color:0},{Pattern:bo,Color:15}]}
setblock -1 110 18 minecraft:black_wall_banner[facing=north]{Base:0,Patterns:[{Pattern:rs,Color:0},{Pattern:hhb,Color:15},{Pattern:ms,Color:0},{Pattern:ts,Color:0},{Pattern:ls,Color:0},{Pattern:bo,Color:15}]}
setblock -2 110 18 minecraft:white_wall_banner[facing=north]{Base:0,Patterns:[{Pattern:mr,Color:15},{Pattern:ms,Color:15},{Pattern:drs,Color:0},{Pattern:bo,Color:15}]}

fill 5 100 19 2 110 19 minecraft:black_concrete
fill -3 100 19 -6 110 19 minecraft:black_concrete

# starting area
fill 6 99 -20 -6 99 20 minecraft:black_concrete
fill 6 98 -20 -6 98 20 minecraft:sea_lantern

fill -7 110 20 -7 99 -20 minecraft:black_concrete

fill -1 99 -20 0 99 20 minecraft:gray_stained_glass

fill -3 99 0 3 99 0 minecraft:gray_stained_glass

# chandelier
fill 1 105 -1 -2 106 1 minecraft:black_concrete
fill -1 107 0 0 110 0 minecraft:white_stained_glass_pane
fill 0 106 0 -1 106 0 minecraft:sea_lantern
fill 0 105 0 -1 105 0 minecraft:white_stained_glass

# secrets
setblock 3 104 -2 minecraft:barrier
setblock 3 104 2 minecraft:barrier
fill 0 105 -4 -1 105 -4 minecraft:barrier
fill 0 105 4 -1 105 4 minecraft:barrier
setblock -4 104 -2 minecraft:barrier
setblock -4 104 2 minecraft:barrier

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

fill 7 98 5 18 91 5 minecraft:gray_stained_glass replace minecraft:black_concrete
fill 7 98 -5 18 91 -5 minecraft:gray_stained_glass replace minecraft:black_concrete
fill 19 91 -27 19 91 27 minecraft:gray_stained_glass replace minecraft:black_concrete

kill @e[tag=CustomMissileArea]
summon minecraft:area_effect_cloud 25 85 -27 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}
summon minecraft:area_effect_cloud 25 85 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}
summon minecraft:area_effect_cloud 25 85 27 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["CustomMissileArea"]}

execute as @e[tag=CustomMissileArea] at @s run function missilewars:set_lobby/set_custom

fill 22 91 -38 26 91 38 minecraft:black_concrete keep
fill 14 90 -27 26 90 27 minecraft:sea_lantern
fill 39 91 -38 39 110 37 minecraft:black_concrete keep

fill 24 91 38 38 110 38 minecraft:black_concrete
fill 38 91 -39 24 110 -39 minecraft:black_concrete keep

# missile area
# floor
fill 6 99 -20 -7 99 -76 minecraft:black_concrete
fill 6 98 -20 -6 98 -76 minecraft:sea_lantern
fill -1 99 -20 0 99 -76 minecraft:gray_stained_glass

fill 6 106 -20 2 106 -76 minecraft:black_concrete
fill -3 106 -20 -7 106 -76 minecraft:black_concrete
fill -2 106 -21 1 106 -76 minecraft:barrier
# ceiling
fill 6 111 -20 -7 111 -76 minecraft:air
fill 6 113 -20 -7 113 -76 minecraft:black_concrete
# walls
fill -7 112 -19 6 112 -19 minecraft:black_concrete

fill 7 99 -20 7 113 -76 minecraft:black_concrete
fill -8 99 -20 -8 113 -76 minecraft:black_concrete

fill 6 100 -20 3 105 -76 minecraft:black_stained_glass
fill -4 100 -20 -7 105 -76 minecraft:black_stained_glass

fill 6 107 -20 3 112 -76 minecraft:black_stained_glass
fill -4 107 -20 -7 112 -76 minecraft:black_stained_glass

fill -7 99 -77 6 112 -77 minecraft:black_concrete
# missiles
setblock -2 101 -20 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{Color:"white",Text4:'{"text":"---------------"}',Text3:'{"text":"New"}',Text2:'{"text":"Missile Set"}',Text1:'{"text":"---------------"}'}

setblock -3 100 -22 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-4,mode:"LOAD",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,name:"missilewars:missiles/new/juggurnaut",sizeY:3,sizeZ:9}
setblock -3 101 -22 minecraft:redstone_block
fill -3 101 -22 -3 100 -22 minecraft:air
setblock -3 101 -25 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Juggurnaut"}',Text1:'{"text":""}'}

setblock -3 100 -42 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-4,mode:"LOAD",posY:1,sizeX:3,posZ:-7,integrity:1.0f,showair:0b,name:"missilewars:missiles/new/shieldbuster",sizeY:3,sizeZ:15}
setblock -3 101 -42 minecraft:redstone_block
fill -3 101 -42 -3 100 -42 minecraft:air
setblock -3 101 -47 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Shieldbuster"}',Text1:'{"text":""}'}

setblock -3 100 -52 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-3,mode:"LOAD",posY:1,sizeX:2,posZ:-10,integrity:1.0f,showair:0b,name:"missilewars:missiles/new/tomohawk",sizeY:2,sizeZ:11}
setblock -3 101 -52 minecraft:redstone_block
fill -3 101 -52 -3 100 -52 minecraft:air
setblock -3 101 -57 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Tomohawk"}',Text1:'{"text":""}'}

setblock -3 100 -69 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:-4,mode:"LOAD",posY:1,sizeX:3,posZ:-6,integrity:1.0f,showair:0b,name:"missilewars:missiles/new/lightning",sizeY:3,sizeZ:6}
setblock -3 101 -69 minecraft:redstone_block
fill -3 101 -69 3 100 -69 minecraft:air
setblock -3 101 -73 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Lightning"}',Text1:'{"text":""}'}

setblock 1 101 -20 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":"---------------"}',Text3:'{"text":"Old"}',Text2:'{"text":"Missile Set"}',Text1:'{"text":"---------------"}'}

setblock 2 100 -24 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,name:"missilewars:missiles/old/juggurnaut",sizeY:3,sizeZ:9}
setblock 2 101 -24 minecraft:redstone_block
fill 2 101 -24 2 100 -24 minecraft:air
setblock 2 101 -27 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Juggurnaut"}',Text1:'{"text":""}'}

setblock 2 100 -38 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:3,posZ:-11,integrity:1.0f,showair:0b,name:"missilewars:missiles/old/shieldbuster",sizeY:3,sizeZ:15}
setblock 2 101 -38 minecraft:redstone_block
fill 2 101 -38 2 100 -38 minecraft:air
setblock 2 101 -42 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Shieldbuster"}',Text1:'{"text":""}'}

setblock 2 100 -52 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:2,posZ:-12,integrity:1.0f,showair:0b,name:"missilewars:missiles/old/tomohawk",sizeY:2,sizeZ:13}
setblock 2 101 -52 minecraft:redstone_block
fill 2 101 -52 2 100 -52 minecraft:air
setblock 2 101 -59 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Tomohawk"}',Text1:'{"text":""}'}

setblock 2 100 -67 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:3,posZ:-8,integrity:1.0f,showair:0b,name:"missilewars:missiles/old/lightning",sizeY:2,sizeZ:9}
setblock 2 101 -67 minecraft:redstone_block
fill 2 101 -67 2 100 -67 minecraft:air
setblock 2 101 -70 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Lightning"}',Text1:'{"text":""}'}

setblock 1 108 -20 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":"---------------"}',Text3:'{"text":"Thin"}',Text2:'{"text":"Missile Set"}',Text1:'{"text":"---------------"}'}

setblock 2 107 -22 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:1,posZ:-14,integrity:1.0f,showair:0b,name:"missilewars:missiles/thin/juggurnaut",sizeY:3,sizeZ:15}
setblock 2 108 -22 minecraft:redstone_block
fill 2 108 -22 2 107 -22 minecraft:air
setblock 2 108 -29 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Juggurnaut"}',Text1:'{"text":""}'}

setblock 2 107 -38 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:1,posZ:-11,integrity:1.0f,showair:0b,name:"missilewars:missiles/thin/shieldbuster",sizeY:4,sizeZ:11}
setblock 2 108 -38 minecraft:redstone_block
fill 2 108 -38 2 107 -38 minecraft:air
setblock 2 108 -44 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Shieldbuster"}',Text1:'{"text":""}'}

setblock 2 107 -52 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:1,posZ:-10,integrity:1.0f,showair:0b,name:"missilewars:missiles/thin/tomohawk",sizeY:5,sizeZ:11}
setblock 2 108 -52 minecraft:redstone_block
fill 2 108 -52 2 107 -52 minecraft:air
setblock 2 108 -57 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Tomohawk"}',Text1:'{"text":""}'}

setblock 2 107 -69 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"kcor_noved",rotation:"NONE",posX:2,mode:"LOAD",posY:1,sizeX:1,posZ:-6,integrity:1.0f,showair:0b,name:"missilewars:missiles/thin/lightning",sizeY:5,sizeZ:7}
setblock 2 108 -69 minecraft:redstone_block
fill 2 108 -69 2 107 -69 minecraft:air
setblock 2 108 -72 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{Color:"white",Text4:'{"text":""}',Text3:'{"text":""}',Text2:'{"text":"Lightning"}',Text1:'{"text":""}'}
# ladder
fill 2 100 -21 2 107 -21 minecraft:ladder[facing=north]
fill -3 100 -21 -3 107 -21 minecraft:ladder[facing=north]
# banners
fill 6 100 -20 2 110 -20 minecraft:black_concrete
fill -3 100 -20 -6 110 -20 minecraft:black_concrete

setblock -4 110 -19 minecraft:black_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:tt,Color:0},{Pattern:tts,Color:15},{Pattern:ls,Color:0},{Pattern:rs,Color:0},{Pattern:bo,Color:15}]}
setblock -3 110 -19 minecraft:black_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:cs,Color:0},{Pattern:ts,Color:0},{Pattern:bs,Color:0},{Pattern:bo,Color:15}]}
setblock -2 110 -19 minecraft:white_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:mr,Color:15},{Pattern:ms,Color:15},{Pattern:drs,Color:0},{Pattern:bo,Color:15}]}
setblock -1 110 -19 minecraft:white_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:mr,Color:15},{Pattern:ms,Color:15},{Pattern:drs,Color:0},{Pattern:bo,Color:15}]}
setblock 0 110 -19 minecraft:black_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:cs,Color:0},{Pattern:ts,Color:0},{Pattern:bs,Color:0},{Pattern:bo,Color:15}]}
setblock 1 110 -19 minecraft:black_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:bs,Color:0},{Pattern:ls,Color:0},{Pattern:bo,Color:15}]}
setblock 2 110 -19 minecraft:black_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:ls,Color:0},{Pattern:ts,Color:0},{Pattern:ms,Color:0},{Pattern:bs,Color:0},{Pattern:bo,Color:15}]}
setblock 3 110 -19 minecraft:white_wall_banner[facing=south]{Base:0,Patterns:[{Pattern:mr,Color:15},{Pattern:ms,Color:15},{Pattern:drs,Color:0},{Pattern:bo,Color:15}]}


# junctions
fill -1 99 0 0 99 0 minecraft:white_stained_glass
fill -1 99 5 0 99 5 minecraft:white_stained_glass
fill -1 99 -5 0 99 -5 minecraft:white_stained_glass
setblock 19 91 27 minecraft:white_stained_glass
setblock 19 91 5 minecraft:white_stained_glass
setblock 19 91 0 minecraft:white_stained_glass
setblock 19 91 -5 minecraft:white_stained_glass
setblock 19 91 -27 minecraft:white_stained_glass