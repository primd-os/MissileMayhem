execute if score @s DirectionPlace matches 1 run tag @s add Temp
execute if score @s DirectionPlace matches 0 run scoreboard players set @s DirectionPlace 1
execute if entity @s[tag=Temp] run scoreboard players set @s DirectionPlace 0
tag @s remove Temp
execute if score @s DirectionPlace matches 1 run title @s actionbar {"text": "Placement: Directional"}
execute if score @s DirectionPlace matches 0 run title @s actionbar {"text": "Placement: Fixed"}