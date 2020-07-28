execute if score @s Adverts matches 1 run tag @s add HadAdverts
execute if entity @s[tag=!HadAdverts] run scoreboard players set @s Adverts 1
execute if entity @s[tag=HadAdverts] run scoreboard players set @s Adverts 0
execute if entity @s[tag=HadAdverts] run tellraw @s {"text": "Disabled Adverts!"}
execute if entity @s[tag=!HadAdverts] run tellraw @s {"text": "Enabled Adverts!"}
tag @s remove HadAdverts
playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1