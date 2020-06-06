scoreboard players add @a MissileSet 1
execute as @a[scores={MissileSet=1}] run title @s actionbar ["",{"text": "MissileSet: Normal","color":"dark_gray"}]
execute as @a[scores={MissileSet=2}] run title @s actionbar ["",{"text": "MissileSet: Old","color":"dark_gray"}]
execute as @a[scores={MissileSet=3}] run title @s actionbar ["",{"text": "MissileSet: Thin","color":"dark_gray"}]
scoreboard players remove @a MissileSet 1

execute as @a unless score @s PrevMissileSet = @s MissileSet run playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1
execute as @a run scoreboard players operation @s PrevMissileSet = @s MissileSet