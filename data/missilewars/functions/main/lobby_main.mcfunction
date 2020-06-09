xp set @s 100 levels
effect give @s minecraft:haste 2 255 true
scoreboard players reset @s Start
scoreboard players enable @s AutoTeam
scoreboard players reset @s JoinSpectators
scoreboard players reset @s JoinGreen
scoreboard players reset @s JoinBlue
scoreboard players enable @s ChooseMap
scoreboard players enable @s GiveBook
scoreboard players enable @s ChooseMissileSet
scoreboard players enable @s MissileSetSelect

gamemode adventure @s[gamemode=!creative]

function missilewars:start/missile_set_display

execute as @s[scores={AutoTeam=1}] run function missilewars:start/join_auto
execute as @s[scores={AutoTeam=1}] run scoreboard players set @s AutoTeam 0

execute as @s[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @s[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute as @s[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @s[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0
execute as @s run scoreboard players operation @s MissileSet = @s ChooseMissileSet

execute at @s if block ~ ~-2 ~ sea_lantern if block ~ ~-1 ~ #minecraft:impermeable run effect give @s speed 2 1 true

execute as @s[tag=Editor] store result score @s Items run clear @s iron_pickaxe 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s iron_pickaxe{Unbreakable:1b,CanDestroy:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate"]} 1
execute as @s[tag=Editor] store result score @s Items run clear @s white_wool 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s white_wool{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s white_stained_glass 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s white_stained_glass{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s redstone_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s redstone_block{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s observer 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s observer{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s piston 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s piston{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s sticky_piston 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s sticky_piston{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s slime_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s slime_block{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s honey_block 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s honey_block{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s tnt 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s tnt{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64
execute as @s[tag=Editor] store result score @s Items run clear @s stone_pressure_plate 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s stone_pressure_plate{CanPlaceOn:["white_wool","white_stained_glass","redstone_block","observer","piston","sticky_piston","slime_block","honey_block","tnt","stone_pressure_plate","minecraft:barrier"]} 64

execute as @s[nbt=!{Inventory:[{id:"minecraft:shulker_box"}]}] run function missilewars:start/give_default_missile

execute at @s at @e[tag=CustomMissileArea,sort=nearest,limit=1] positioned ~ ~ ~-10 if entity @s[dx=13,dy=15,dz=20] run tag @s add InBox
clear @s[tag=!InBox,tag=Editor]
tag @s[tag=!InBox] remove Editor
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-9 ~8 ~9 ~8 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~12 ~6 ~-9 ~12 ~9 ~8 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~-10 ~12 ~9 ~-10 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~6 ~9 ~12 ~9 ~9 minecraft:air
execute if entity @s[tag=InBox] at @s as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run fill ~8 ~9 ~-10 ~12 ~9 ~8 minecraft:air
tag @s remove InBox

scoreboard players set @s deathCheck 0