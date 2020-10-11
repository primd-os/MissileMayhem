execute if score @s m.DoRanked matches 1 run tag @s add HadRanked
execute if entity @s[tag=!HadRanked] run scoreboard players set @s m.DoRanked 1
execute if entity @s[tag=HadRanked] run scoreboard players set @s m.DoRanked 0
execute if entity @s[tag=HadRanked] run tellraw @s {"text": "Disabled Ranked!"}
execute if entity @s[tag=!HadRanked] run tellraw @s {"text": "Enabled Ranked!"}
tag @s remove HadRanked
playsound entity.experience_orb.pickup block @s ~ ~ ~ 1 1