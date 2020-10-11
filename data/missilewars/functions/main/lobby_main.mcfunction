effect give @s minecraft:haste 2 255 true
scoreboard players reset @s Leave
scoreboard players reset @s TPA
scoreboard players reset @s TPAccept
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players reset @s JoinRed
scoreboard players reset @s JoinBlack
scoreboard players reset @s ClearPractice
scoreboard players enable @s ChooseMap
scoreboard players enable @s MapVote
scoreboard players enable @s GiveBook
scoreboard players enable @s ChooseMissileSet
scoreboard players enable @s MissileSetSelect
scoreboard players enable @s ToggleRanked

execute unless entity @s[scores={m.points=-2147483648..2147483647}] run scoreboard players set @s m.points 1000

tag @s remove carrier

gamemode adventure @s[gamemode=!creative]
execute in missilewars:lobby run spawnpoint @s 10 108 40
execute in missilewars:lobby run tp @s[nbt=!{Dimension:"missilewars:lobby"}] 10 108 40
effect give @s saturation 2 0 true

execute if block ~ ~ ~ wheat run function missilewars:main/wheat_tp
execute if block ~ ~-1 ~ wheat run function missilewars:main/wheat_tp
execute if block ~ ~-2 ~ wheat run function missilewars:main/wheat_tp

execute as @s[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @s[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute unless score @s MapVote = @s PrevMapVote at @s run function missilewars:main/switch_vote

execute as @s[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @s[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0

execute unless entity @s[scores={ChooseMissileSet=-2147483648..2147483647}] run scoreboard players operation @s ChooseMissileSet = @s m.MissileSet
scoreboard players operation @s m.MissileSet = @s ChooseMissileSet
function missilewars:start/missile_set_display

execute as @s[scores={ToggleRanked=1}] run function missilewars:start/toggle_ranked
execute as @s[scores={ToggleRanked=1}] run scoreboard players set @s ToggleRanked 0

execute as @s[tag=Editor] at @s run function missilewars:main/lobby_editor
scoreboard players set @s m.tntCount 0
scoreboard players set @s m.tntBroke 0

tag @s remove InBox
execute at @s at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=15,dz=21] run tag @s add InBox
execute at @s at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=15,dz=21] run tag @s add InBox
execute at @s at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=0] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=15,dz=7] run tag @s add InBox
execute at @s at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-180] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=15,dz=7] run tag @s add InBox
execute as @s[tag=!InBox,tag=Editor] run function missilewars:main/clear_inv
tag @s[tag=!InBox] remove Editor

execute positioned -6.5 82 6.5 run tp @s[distance=..2] 10 108.5 40

execute store result score NumBook m.Variables run clear @s writable_book{Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 0
execute if score NumBook m.Variables matches 0 run give @s writable_book{display:{Name:'{"text":"Custom Missile"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],pages:["missilewars:default"]}
execute as @s[tag=InBox,nbt={Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_off_head
execute as @s[tag=!InBox,nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_to_head
clear @s written_book{Enchantments:[{id:"minecraft:binding_curse"}]}

execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^ ^2 ^8 ^3 ^2 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^ ^-2 ^8 ^3 ^-2 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-9 ^ ^-1 ^-9 ^3 ^1 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^9 ^ ^-1 ^9 ^3 ^1 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-8 ^4 ^-1 ^8 ^4 ^1 minecraft:air

execute if entity @s[team=Lobby,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join Sumo
execute unless entity @s[team=Sumo,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join Lobby

tag @s[y=103,dy=3,x=-1000,dx=2000,z=-1000,dz=2000] remove Parkour
scoreboard players add @s[tag=Parkour] m.Timer 1

scoreboard players set @s m.deathCheck 0