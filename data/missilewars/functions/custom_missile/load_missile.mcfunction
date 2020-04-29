playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 0

tag @s add Editor
function missilewars:main/clear_inv

function missilewars:custom_missile/load_from_inv

summon minecraft:area_effect_cloud 37.5 96 23.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
summon minecraft:area_effect_cloud 31.5 96 14.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["iterator"]}

scoreboard players set temp2 Constants 0
scoreboard players set rows_completed Constants 0
scoreboard players set chests_completed Constants 0
function missilewars:custom_missile/iterate_load

function missilewars:custom_missile/clean_up