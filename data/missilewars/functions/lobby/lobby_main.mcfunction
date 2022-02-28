effect give @s minecraft:haste 2 255 true
scoreboard players reset @s leave
scoreboard players reset @s ClearPractice
scoreboard players reset @s heal
execute unless score @s ChooseMissileSet matches -2147483648..2147483647 run scoreboard players set @s ChooseMissileSet -2

execute unless entity @s[scores={m.points=-2147483648..2147483647}] run scoreboard players set @s m.points 1000
execute unless entity @s[scores={m.GameCreationStage=-2147483648..2147483647}] run scoreboard players set @s m.GameCreationStage 0

tag @s remove carrier

gamemode adventure @s[gamemode=!creative]
execute in missilewars:lobby positioned 10 108 40 run function hub:main/death/spawnpoint
execute unless predicate missilewars:in_lobby run function missilewars:start/give_book
execute unless predicate missilewars:in_lobby run scoreboard players enable @s ChooseMissileSet
execute unless predicate missilewars:in_lobby in missilewars:lobby run tp @s 10 108 40
effect give @s saturation 2 0 true

execute if block ~ ~ ~ wheat run function missilewars:lobby/wheat_tp
execute if block ~ ~-1 ~ wheat run function missilewars:lobby/wheat_tp
execute if block ~ ~-2 ~ wheat run function missilewars:lobby/wheat_tp

function missilewars:start/missile_set_display

execute as @s[tag=Editor] run function missilewars:lobby/lobby_editor
scoreboard players set @s m.tntCount 0
scoreboard players set @s m.tntBroke 0

tag @s[tag=InBox] add WasInBox
tag @s remove InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=25,dz=21] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=90] positioned ~-3 ~ ~-10 if entity @s[dx=7,dy=25,dz=21] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=0] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=25,dz=7] run tag @s add InBox
execute at @s at @e[type=marker,tag=CustomMissileArea,sort=nearest,limit=1,y_rotation=-180] positioned ~-10 ~ ~-3 if entity @s[dx=21,dy=25,dz=7] run tag @s add InBox
execute as @s[tag=WasInBox,tag=!InBox] run function missilewars:lobby/leave_box
execute as @s[tag=InBox,tag=!WasInBox] run function missilewars:custom_missile/move_off_head
tag @s remove WasInBox

execute positioned -6.5 82 6.5 run playsound minecraft:entity.player.attack.sweep master @s[distance=..2] ~ ~ ~ 100 2 1
execute positioned -6.5 82 6.5 run tp @s[distance=..2] 10 108.5 40
execute positioned -6.5 82 6.5 run particle portal ~ ~ ~ 0 0 0 2 1 normal @s

execute if score @s m.inv_change matches 1 as @s[tag=InBox] run clear @s written_book{display:{Name:'{"text":"Custom Missile"}'}}
scoreboard players set @s m.Items 1
execute if score @s m.inv_change matches 1 store result score @s m.Items run clear @s minecraft:writable_book 0
execute as @s[tag=InBox,scores={m.Items=0}] run function missilewars:custom_missile/move_off_head

execute if entity @s[team=m.Lobby,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join m.Sumo
execute unless entity @s[team=m.Sumo,x=-5,y=109,z=-23,dx=20,dy=20,dz=20] run team join m.Lobby

scoreboard players enable @s CreateGame
execute as @s[scores={CreateGame=1..,m.GameCreationStage=0}] run function missilewars:game_modes/create_game/start
execute as @s[scores={CreateGame=1..5,m.GameCreationStage=1}] run function missilewars:game_modes/create_game/choose_mode
execute as @s[scores={CreateGame=1..3,m.GameCreationStage=2}] run function missilewars:game_modes/create_game/choose_teams
scoreboard players set @s CreateGame 0

tag @s[y=103,dy=3,x=-36,dx=72,z=-1000,dz=2000] remove Parkour

scoreboard players set @s m.deathCheck 0