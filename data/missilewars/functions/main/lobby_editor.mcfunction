scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount += @s m.tntCount
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= @s m.tntBroke
scoreboard players operation tnt m.Variables = @s m.tntBroke

scoreboard players set @s m.Items 2
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s iron_pickaxe 0
execute if score @s m.Items matches 0 run give @s iron_pickaxe{Unbreakable:1b,CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 1
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s white_wool 0
execute if score @s m.Items matches 0..1 run give @s white_wool{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s white_stained_glass 0
execute if score @s m.Items matches 0..1 run give @s white_stained_glass{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s redstone_block 0
execute if score @s m.Items matches 0..1 run give @s redstone_block{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s observer 0
execute if score @s m.Items matches 0..1 run give @s observer{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s piston 0
execute if score @s m.Items matches 0..1 run give @s piston{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s sticky_piston 0
execute if score @s m.Items matches 0..1 run give @s sticky_piston{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s slime_block 0
execute if score @s m.Items matches 0..1 run give @s slime_block{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s honey_block 0
execute if score @s m.Items matches 0..1 run give @s honey_block{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s stone_pressure_plate 0
execute if score @s m.Items matches 0..1 run give @s stone_pressure_plate{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s gray_glazed_terracotta 0
execute if score @s m.Items matches 0..1 run give @s gray_glazed_terracotta{CanPlaceOn:["#missilewars:custom_blocks","magenta_glazed_terracotta"],CanDestroy:["#missilewars:custom_blocks"],HideFlags:24} 63

execute store result score @s m.Items run clear @s tnt 0
scoreboard players operation tnt m.Variables = TntLimit m.Constants
scoreboard players operation tnt m.Variables -= @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount
scoreboard players operation tnt m.Variables -= @s m.Items
execute if score tnt m.Variables matches ..-1 run clear @s tnt 1
execute if score tnt m.Variables matches 1.. run function missilewars:custom_missile/give_tnt

execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^ ^2 ^8 ^3 ^2 minecraft:air replace tnt
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^ ^-2 ^8 ^3 ^-2 minecraft:air replace tnt
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-9 ^ ^-1 ^-9 ^3 ^1 minecraft:air replace tnt
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^9 ^ ^-1 ^9 ^3 ^1 minecraft:air replace tnt
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^4 ^-1 ^8 ^4 ^1 minecraft:air replace tnt
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^ ^2 ^8 ^3 ^2 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^ ^-2 ^8 ^3 ^-2 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-9 ^ ^-1 ^-9 ^3 ^1 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^9 ^ ^-1 ^9 ^3 ^1 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables
execute as @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt m.Variables run fill ^-8 ^4 ^-1 ^8 ^4 ^1 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
scoreboard players operation @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1] m.tntCount -= tnt m.Variables