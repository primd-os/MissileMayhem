playsound minecraft:entity.experience_orb.pickup block @a[x=0] ~ ~ ~ 1 1

execute as @e[tag=CustomMissileArea,sort=nearest,limit=1] at @s run summon minecraft:area_effect_cloud ~9 ~6 ~8 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["mover"]}
execute in missilewars:store run summon minecraft:area_effect_cloud 0 0 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["iterator"]}

scoreboard players set temp2 Constants 0
scoreboard players set rows_completed Constants 0
scoreboard players set chests_completed Constants 0
execute in missilewars:store run fill 0 0 0 0 0 5 minecraft:shulker_box
function missilewars:custom_missile/iterate_save

function missilewars:custom_missile/clean_up

execute in missilewars:store run setblock 0 0 -1 minecraft:shulker_box
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 0
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 1
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 2
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 3
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 4
execute in missilewars:store run loot insert 0 0 -1 mine 0 0 5

clear @s shulker_box
execute in missilewars:store run loot replace entity @s inventory.8 mine 0 0 -1

gamemode adventure @s
function missilewars:main/clear_inv

tag @s remove Editor