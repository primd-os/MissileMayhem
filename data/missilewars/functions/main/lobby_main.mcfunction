xp set @s 100 levels
effect give @s minecraft:haste 2 255 true
scoreboard players enable @s Start
scoreboard players enable @s AutoTeam
scoreboard players enable @s JoinSpectators
scoreboard players enable @s ChooseMap
scoreboard players enable @s GiveBook
scoreboard players enable @s ChooseMissileSet
scoreboard players enable @s MissileSetSelect

gamemode adventure @s[tag=!Editor,gamemode=!creative]
gamemode survival @s[tag=Editor,gamemode=!creative]

function missilewars:start/missile_set_display

execute as @s[scores={AutoTeam=1}] run function missilewars:start/join_auto
execute as @s[scores={AutoTeam=1}] run scoreboard players set @s AutoTeam 0

execute as @s[scores={JoinSpectators=1}] run function missilewars:start/join_spectators
execute as @s[scores={JoinSpectators=1}] run scoreboard players set @s JoinSpectators 0

execute as @s[scores={ChooseMap=1}] run function missilewars:start/choose_map
execute as @s[scores={ChooseMap=1}] run scoreboard players set @s ChooseMap 0

execute as @s[scores={MissileSetSelect=1}] run function missilewars:start/choose_missile_set
execute as @s[scores={MissileSetSelect=1}] run scoreboard players set @s MissileSetSelect 0
execute as @s run scoreboard players operation @s MissileSet = @s ChooseMissileSet

execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run playsound entity.generic.explode block @s ~ ~ ~ 1
execute as @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23] at @s run particle explosion ~ ~ ~
kill @e[type=tnt,nbt={Fuse:1s},x=34,y=94,z=3,dx=8,dy=7,dz=23]

execute as @s[tag=Editor] store result score @s Items run clear @s iron_pickaxe 0
execute as @s[tag=Editor] if score @s Items matches 0 run give @s iron_pickaxe{Unbreakable:1b} 1
execute as @s[tag=Editor] store result score @s Items run clear @s white_wool 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s white_wool 1
execute as @s[tag=Editor] store result score @s Items run clear @s white_stained_glass 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s white_stained_glass 1
execute as @s[tag=Editor] store result score @s Items run clear @s redstone_block 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s redstone_block 1
execute as @s[tag=Editor] store result score @s Items run clear @s observer 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s observer 1
execute as @s[tag=Editor] store result score @s Items run clear @s piston 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s piston 1
execute as @s[tag=Editor] store result score @s Items run clear @s sticky_piston 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s sticky_piston 1
execute as @s[tag=Editor] store result score @s Items run clear @s slime_block 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s slime_block 1
execute as @s[tag=Editor] store result score @s Items run clear @s honey_block 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s honey_block 1
execute as @s[tag=Editor] store result score @s Items run clear @s tnt 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s tnt 1
execute as @s[tag=Editor] store result score @s Items run clear @s stone_pressure_plate 0
execute as @s[tag=Editor] if score @s Items matches 0..63 run give @s stone_pressure_plate 1

scoreboard players set @s deathCheck 0