execute as @s[scores={MissileSet=0}] run title @s actionbar ["",{"text": "MissileSet: Normal","color":"dark_gray"}]
execute as @s[scores={MissileSet=1}] run title @s actionbar ["",{"text": "MissileSet: Old","color":"dark_gray"}]
execute as @s[scores={MissileSet=2}] run title @s actionbar ["",{"text": "MissileSet: Thin","color":"dark_gray"}]

execute if score @s MissileSet matches ..-1 run tellraw @s {"text":"Invalid missile set id.","color": "red"}
execute if score @s MissileSet matches 3.. run tellraw @s {"text":"Invalid missile set id.","color": "red"}
execute if score @s MissileSet matches ..-1 run scoreboard players operation @s MissileSet = @s PrevMissileSet
execute if score @s MissileSet matches 3.. run scoreboard players operation @s MissileSet = @s PrevMissileSet

execute unless score @s PrevMissileSet = @s MissileSet run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
scoreboard players operation @s PrevMissileSet = @s MissileSet

scoreboard players operation @s ChooseMissileSet = @s MissileSet