setblock -7 105 40 minecraft:spruce_wall_sign[facing=east]{Text1:'{"text":"-=-","color":"yellow"}',Text2:'{"text":"Click to","color":"white"}',Text3:'{"text":"Create Game","color":"white","clickEvent":{"action": "run_command","value": "scoreboard players set @s CreateGame 1"}}',Text4:'{"text":"-=-","color":"yellow"}'} destroy

setblock -13 106 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Commands","underlined": true,"bold": true}'} destroy
setblock -14 105 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To","clickEvent":{"action":"run_command","value":"trigger Practice"}}',Text3:'{"text":"Go To Practice"}'} destroy
setblock -13 105 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To","clickEvent":{"action":"run_command","value":"trigger ToggleRanked"}}',Text3:'{"text":"Toggle Ranked Games"}'} destroy
setblock -12 105 1 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Click To Join","clickEvent":{"action":"run_command","value":"function missilewars:start/discord"}}',Text2:'{"text":"The Official"}',Text3:'{"text":"Discord Server"}'} destroy
setblock -11 105 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To"}',Text3:'{"text":"Get Instructions","clickEvent":{"action":"run_command","value":"trigger GiveBook"}}'} destroy
setblock -14 104 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To","clickEvent":{"action":"run_command","value":"trigger ChooseMap"}}',Text3:'{"text":"Choose Map"}'} destroy
setblock -13 104 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To"}',Text3:'{"text":"Make Custom","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_custom"}}'} destroy
setblock -12 104 1 minecraft:oak_wall_sign[facing=south]{Text2:'{"text":"Click To"}',Text3:'{"text":"Choose Missile","clickEvent":{"action":"run_command","value":"trigger ChooseMissileSet"}}',Text4:'{"text": "Set"}'} destroy

setblock -20 103 38 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"Secret Sign!","clickEvent":{"action":"run_command","value":"function missilewars:main/tp_secret"}}'} destroy

setblock -8 106 31 minecraft:oak_wall_sign[facing=east]{Color:"black",Text1:'{"text":"Settings","clickEvent":{"action":"run_command","value":"tp -12.5 104 3.5"}}'} destroy
setblock -8 104 28 minecraft:oak_wall_sign[facing=east]{Color:"black",Text1:'{"text":"Missile Expo","clickEvent":{"action":"run_command","value":"tp 47.5 105.5 -25.5"}}'} destroy
setblock -7 104 25 minecraft:oak_wall_sign[facing=east]{Color:"black",Text1:'{"text":"Map Voting","clickEvent":{"action":"run_command","value":"tp 1.5 82 -3.5"}}'} destroy
setblock -3 104 21 minecraft:oak_wall_sign[facing=south]{Color:"black",Text2:'{"text":"Missile"}',Text1:'{"text":"Make Custom","clickEvent":{"action":"run_command","value":"tp -17 104 85"}}'} destroy
setblock 0 104 20 minecraft:oak_wall_sign[facing=south]{Color:"black",Text1:'{"text":"Credits","clickEvent":{"action":"run_command","value":"function missilewars:set_lobby/credits"}}'} destroy

kill @e[type=marker,tag=CustomMissileArea,x=0]
summon minecraft:marker -31.5 104 58.5 {Tags: ["CustomMissileArea"],Rotation:[-90f,0f]}
summon minecraft:marker -19.5 105 65.5 {Tags: ["CustomMissileArea"],Rotation:[-90f,0f]}
summon minecraft:marker 2.5 105 86.5 {Tags: ["CustomMissileArea"],Rotation:[-90f,0f]}
summon minecraft:marker 13.5 105 88.5 {Tags: ["CustomMissileArea"],Rotation:[-90f,0f]}

execute as @e[type=marker,tag=CustomMissileArea] at @s run function missilewars:set_lobby/set_custom

function missilewars:set_lobby/minimaps/add