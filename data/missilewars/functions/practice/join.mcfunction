scoreboard players set @s Game 1000
team join Blue @s
gamemode survival @s
execute in missilewars:practice run tag @e[type=area_effect_cloud,x=0,tag=PracticeArea,tag=!InUse,sort=random,limit=1] add ToTP
execute in missilewars:practice at @e[type=area_effect_cloud,x=0,tag=ToTP] run tp @s ~ ~1 ~
execute in missilewars:practice at @e[type=area_effect_cloud,x=0,tag=ToTP] run spawnpoint @s ~ ~1 ~
execute in missilewars:practice run tag @e[type=area_effect_cloud,x=0,tag=ToTP] add InUse
execute in missilewars:practice run tag @e[x=0] remove ToTP

function missilewars:main/clear_inv

function missilewars:item_managers/bow
function missilewars:new_missile/give/tomohawk
function missilewars:new_missile/give/juggurnaut
function missilewars:new_missile/give/lightning
function missilewars:new_missile/give/shieldbuster
function missilewars:new_missile/give/custom
give @s minecraft:snowball{display:{Name:'{"text":"Shield"}'}}
give @s minecraft:arrow 64
give @s minecraft:firework_rocket{display:{Name:'{"text":"Fireball"}'}}