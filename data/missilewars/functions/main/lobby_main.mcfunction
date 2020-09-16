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

tag @s remove carrier

gamemode adventure @s[gamemode=!creative]
execute in missilewars:lobby run spawnpoint @s 0 101 0 270
execute in missilewars:lobby run tp @s[nbt=!{Dimension:"missilewars:lobby"}] 0 101 0
effect give @s saturation 2 0 true

execute at @s run function missilewars:start/missile_set_display

execute as @s[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @s[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute unless score @s MapVote = @s PrevMapVote at @s run function missilewars:main/switch_vote

execute as @s[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @s[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0
execute as @s run scoreboard players operation @s MissileSet = @s ChooseMissileSet

execute as @s[scores={StopAdverts=1}] run function missilewars:start/toggle_adverts
execute as @s[scores={StopAdverts=1}] run scoreboard players set @s StopAdverts 0

execute as @s[scores={ToggleRanked=1}] run function missilewars:start/toggle_ranked
execute as @s[scores={ToggleRanked=1}] run scoreboard players set @s ToggleRanked 0

execute at @s if block ~ ~-2 ~ sea_lantern if block ~ ~-1 ~ #minecraft:impermeable run effect give @s speed 2 1 true

execute as @s[tag=Editor] at @s run function missilewars:main/lobby_editor
scoreboard players set @s tntCount 0
scoreboard players set @s tntBroke 0

execute at @s at @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] positioned ^ ^ ^10 positioned ~-10 ~ ~-10 if entity @s[dx=21,dy=15,dz=21] run tag @s add InBox
execute as @s[tag=!InBox,tag=Editor] run function missilewars:main/clear_inv
tag @s[tag=!InBox] remove Editor

execute store result score NumBook Variables run clear @s writable_book{Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 0
execute if score NumBook Variables matches 0 run give @s writable_book{display:{Name:'{"text":"Custom Missile"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],pages:["missilewars:default"]}
execute as @s[tag=InBox,nbt={Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_off_head
execute as @s[tag=!InBox,nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_to_head
clear @s written_book{Enchantments:[{id:"minecraft:binding_curse"}]}

execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-9 ^6 ^8 ^8 ^9 ^8 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-9 ^6 ^12 ^9 ^9 ^12 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-9 ^6 ^8 ^-9 ^9 ^12 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^9 ^6 ^8 ^9 ^9 ^12 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ^-9 ^9 ^8 ^9 ^9 ^12 minecraft:air
tag @s remove InBox

execute if entity @s[team=Lobby,x=-1,y=107,z=-1,dx=3,dy=3,dz=3] run team join Sumo
execute unless entity @s[team=Sumo,x=-1,y=107,z=-1,dx=3,dy=3,dz=3] run team join Lobby

scoreboard players set @s deathCheck 0