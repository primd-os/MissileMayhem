scoreboard players add @s MissileSet 1
execute as @s[scores={MissileSet=1}] run title @s actionbar ["",{"text": "MissileSet: Normal","color":"dark_gray"}]
execute as @s[scores={MissileSet=2}] run title @s actionbar ["",{"text": "MissileSet: Old","color":"dark_gray"}]
execute as @s[scores={MissileSet=3}] run title @s actionbar ["",{"text": "MissileSet: Thin","color":"dark_gray"}]
scoreboard players remove @s MissileSet 1

execute unless score @s PrevMissileSet = @s MissileSet run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
scoreboard players operation @s PrevMissileSet = @s MissileSet