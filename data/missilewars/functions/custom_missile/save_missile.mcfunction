playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 1

execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run summon minecraft:area_effect_cloud ~9 ~6 ~8 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
summon minecraft:area_effect_cloud 31.5 96 14.5 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["iterator"]}

scoreboard players set temp2 Constants 0
scoreboard players set rows_completed Constants 0
scoreboard players set chests_completed Constants 0
fill 31 95 14 32 95 16 minecraft:shulker_box
function missilewars:custom_missile/iterate_save

function missilewars:custom_missile/clean_up

setblock 34 95 15 minecraft:shulker_box
loot insert 34 95 15 mine 31 95 14
loot insert 34 95 15 mine 31 95 15
loot insert 34 95 15 mine 31 95 16
loot insert 34 95 15 mine 32 95 14
loot insert 34 95 15 mine 32 95 15
loot insert 34 95 15 mine 32 95 16

execute positioned 34 95 15 run clear @s shulker_box
execute positioned 34 95 15 run loot give @s mine 34 95 15
fill 34 95 16 31 95 14 air

gamemode adventure @s
function missilewars:main/clear_inv

tag @s remove Editor