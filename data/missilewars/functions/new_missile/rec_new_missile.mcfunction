summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rngcloud"]}
execute store result score $rng random run data get entity @e[type=minecraft:area_effect_cloud,tag=rngcloud,limit=1] UUID[0]
kill @e[type=minecraft:area_effect_cloud,tag=rngcloud]

scoreboard players operation $rng random %= NumMissiles Constants

function missilewars:new_missile/queue_missile
function missilewars:new_missile/check_fail