scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount += @s tntCount
scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= @s tntBroke
scoreboard players operation tnt Variables = @s tntBroke
function missilewars:custom_missile/give_tnt

execute store result score @s Items run clear @s iron_pickaxe 0
execute if score @s Items matches 0 run give @s iron_pickaxe{Unbreakable:1b,CanDestroy:["#missilewars:custom_blocks"]} 1
execute store result score @s Items run clear @s white_wool 0
execute if score @s Items matches 0 run give @s white_wool{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s white_stained_glass 0
execute if score @s Items matches 0 run give @s white_stained_glass{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s redstone_block 0
execute if score @s Items matches 0 run give @s redstone_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s observer 0
execute if score @s Items matches 0 run give @s observer{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s piston 0
execute if score @s Items matches 0 run give @s piston{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s sticky_piston 0
execute if score @s Items matches 0 run give @s sticky_piston{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s slime_block 0
execute if score @s Items matches 0 run give @s slime_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s honey_block 0
execute if score @s Items matches 0 run give @s honey_block{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s tnt 0
scoreboard players operation tnt Variables = TntLimit Constants
execute if score @s Items matches 0 if score @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount < TntLimit Constants run function missilewars:custom_missile/give_tnt
execute store result score @s Items if score @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount >= TntLimit Constants run clear @s tnt
execute store result score @s Items run clear @s stone_pressure_plate 0
execute if score @s Items matches 0 run give @s stone_pressure_plate{CanPlaceOn:["#missilewars:custom_blocks"]} 64
execute store result score @s Items run clear @s gray_glazed_terracotta 0
execute if score @s Items matches 0 run give @s gray_glazed_terracotta{CanPlaceOn:["#missilewars:custom_blocks"]} 64

execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^8 ^8 ^9 ^8 minecraft:air replace tnt
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^12 ^9 ^9 ^12 minecraft:air replace tnt
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^8 ^-9 ^9 ^12 minecraft:air replace tnt
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^9 ^6 ^8 ^9 ^9 ^12 minecraft:air replace tnt
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^9 ^8 ^9 ^9 ^12 minecraft:air replace tnt
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^8 ^8 ^9 ^8 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^12 ^9 ^9 ^12 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^6 ^8 ^-9 ^9 ^12 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^9 ^6 ^8 ^9 ^9 ^12 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt
execute at @s as @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] at @s store result score tnt Variables run fill ^-9 ^9 ^8 ^9 ^9 ^12 minecraft:air replace moving_piston{blockState:{Name:"minecraft:tnt"}}
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=CustomMissileArea,sort=nearest,limit=1] tntCount -= tnt Variables
function missilewars:custom_missile/give_tnt