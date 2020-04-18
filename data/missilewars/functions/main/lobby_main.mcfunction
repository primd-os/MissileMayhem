xp set @a 100 levels
effect give @a minecraft:haste 2 255 true
scoreboard players enable @a Start
scoreboard players enable @a AutoTeam
scoreboard players enable @a JoinSpectators
scoreboard players enable @a ChooseMap

gamemode adventure @a[tag=!Editor]
gamemode survival @a[tag=Editor]

execute as @a[scores={AutoTeam=1}] run function missilewars:start/join_auto
execute as @a[scores={AutoTeam=1}] run scoreboard players set @s AutoTeam 0

execute as @a[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @a[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @a[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @a[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run playsound entity.generic.explode block @a ~ ~ ~ 1
execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run particle explosion ~ ~ ~
kill @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23]

give @a[tag=!PlayedBefore] written_book{author:"kcor_noved",title:"How To Play",pages:['{"text":"Your goal is to destroy the gems on the other side of the map."}','{"text":"To aid with this you are given missiles."}']} 1
tag @a[tag=!PlayedBefore] add PlayedBefore


execute unless block -4 100 0 lectern run setblock -4 100 0 lectern[facing=east,has_book=true]{Book:{id:written_book,Count:1b,tag:{author:"Summoner",title:"Summoned Book",pages:['{"text":"Normal\\n\\nThe simplest map with 6 thick walls."}','{"text":"No Walls\\n\\nFor people who play it risky, no defence."}','{"text":"Small\\n\\nNo Walls but with small walls. Defends against single missiles."}','{"text":"Center Wall\\n\\nGiant wall in center. Focuses missile fire to small lanes."}','{"text":"Platforms\\n\\nPlatforms make navigating bases and launching missiles easier."}','{"text":"Weak Center\\n\\nLess glass in the center focuses missile fire off of sides."}','{"text":"Bridge\\n\\n5 wide bridge across gap encourages pvp combat and makes play more hectic."}']}}}

scoreboard players set @a deathCheck 0

function missilewars:start/check_start

execute as @e[x=0, y=100,z=5,distance=0..2,team=!Blue] run function missilewars:start/join_blue
execute as @e[x=0, y=100,z=-5,distance=0..2,team=!Green] run function missilewars:start/join_green

function missilewars:maps/select_map

function missilewars:custom_missile/save_and_load

execute if score Running Constants matches 0 run function missilewars:main/set_map