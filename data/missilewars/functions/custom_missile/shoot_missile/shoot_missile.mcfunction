function missilewars:custom_missile/load_from_inv
execute if entity @s[scores={DirecToPlace=2}] run summon minecraft:area_effect_cloud ~-1 ~-5 ~-3 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
execute if entity @s[scores={DirecToPlace=1}] run summon minecraft:area_effect_cloud ~-3 ~-5 ~1 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
execute if entity @s[scores={DirecToPlace=0}] run summon minecraft:area_effect_cloud ~1 ~-5 ~3 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
execute if entity @s[scores={DirecToPlace=3}] run summon minecraft:area_effect_cloud ~3 ~-5 ~-1 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}

summon minecraft:area_effect_cloud 31.5 96 14.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["iterator"]}

scoreboard players set temp2 Constants 0
scoreboard players set rows_completed Constants 0
scoreboard players set chests_completed Constants 0

execute if entity @s[scores={DirecToPlace=2}] run function missilewars:custom_missile/shoot_missile/0_shoot
execute if entity @s[scores={DirecToPlace=1}] run function missilewars:custom_missile/shoot_missile/90_shoot
execute if entity @s[scores={DirecToPlace=0}] run function missilewars:custom_missile/shoot_missile/180_shoot
execute if entity @s[scores={DirecToPlace=3}] run function missilewars:custom_missile/shoot_missile/270_shoot

function missilewars:custom_missile/clean_up
fill 31 95 14 32 95 16 air