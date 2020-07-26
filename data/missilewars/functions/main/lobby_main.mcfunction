xp set @s 100 levels
effect give @s minecraft:haste 2 255 true
scoreboard players reset @s Start
scoreboard players reset @s Leave
scoreboard players enable @s AutoTeam
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players enable @s ChooseMap
scoreboard players enable @s MapVote
scoreboard players enable @s GiveBook
scoreboard players enable @s ChooseMissileSet
scoreboard players enable @s MissileSetSelect

gamemode adventure @s[gamemode=!creative]
execute in missilewars:lobby run spawnpoint @s 0 101 0
execute in missilewars:lobby run tp @s[nbt=!{Dimension:"missilewars:lobby"}] 0 101 0
effect give @s saturation 2 0 true

function missilewars:start/missile_set_display

execute as @s[scores={AutoTeam=1}] run function missilewars:start/join_auto
execute as @s[scores={AutoTeam=1}] run scoreboard players set @s AutoTeam 0

execute as @s[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @s[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute unless score @s MapVote = @s PrevMapVote run function missilewars:main/switch_vote

execute as @s[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @s[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0
execute as @s run scoreboard players operation @s MissileSet = @s ChooseMissileSet

execute at @s if block ~ ~-2 ~ sea_lantern if block ~ ~-1 ~ #minecraft:impermeable run effect give @s speed 2 1 true

execute as @s[tag=Editor] store result score @s Items run clear @s iron_pickaxe 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s iron_pickaxe{Unbreakable:1b,CanDestroy:["#missilewars:custom_blocks"]} 1
execute as @s[tag=Editor] store result score @s Items run clear @s white_wool 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s white_wool{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s white_stained_glass 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s white_stained_glass{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s redstone_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s redstone_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s observer 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s observer{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s piston 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s piston{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s sticky_piston 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s sticky_piston{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s slime_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s slime_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s honey_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s honey_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s tnt 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s tnt{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s stone_pressure_plate 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s stone_pressure_plate{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s gray_glazed_terracotta 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s gray_glazed_terracotta{CanPlaceOn:["#missilewars:custom_blocks"]} 64

execute at @s at @e[tag=CustomMissileArea,sort=nearest,limit=1] positioned ~ ~ ~-10 if entity @s[dx=13,dy=15,dz=20] run tag @s add InBox
execute as @s[tag=!InBox,tag=Editor] run function missilewars:main/clear_inv
tag @s[tag=!InBox] remove Editor

execute as @s[tag=InBox] store result score NumBook Constants run clear @s writable_book 0
execute as @s[tag=InBox] if score NumBook Constants matches 0 run give @s writable_book{Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
execute as @s[tag=InBox,nbt={Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_off_head
execute as @s[tag=!InBox,nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:103b}]}] run function missilewars:custom_missile/move_to_head
clear @s written_book

execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-9 ~8 ~9 ~8 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~12 ~6 ~-9 ~12 ~9 ~9 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-9 ~12 ~9 ~-9 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~9 ~12 ~9 ~9 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~9 ~-9 ~12 ~9 ~9 minecraft:air
tag @s remove InBox

scoreboard players set @s deathCheck 0