playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 0

tag @s add Editor
function missilewars:main/clear_inv

function missilewars:custom_missile/load_from_inv

execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run summon minecraft:area_effect_cloud ~9 ~6 ~8 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
execute in missilewars:store run summon minecraft:area_effect_cloud 0 0 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["iterator"]}

scoreboard players set @s DirecToPlace 2

scoreboard players set temp2 Constants 0
scoreboard players set rows_completed Constants 0
scoreboard players set chests_completed Constants 0
function missilewars:custom_missile/iterate_load

function missilewars:custom_missile/clean_up
fill 34 95 16 31 95 14 air