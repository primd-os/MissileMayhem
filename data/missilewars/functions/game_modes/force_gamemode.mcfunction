execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run effect give @s resistance 1 255 true
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run gamemode adventure @s[team=!Spectator,gamemode=!creative]
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=1}] run gamemode survival @s[team=!Spectator,gamemode=!creative]
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=2..}] run gamemode spectator @s[team=!Spectator,gamemode=!creative]
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=1..}] run gamemode spectator @s[team=Spectator,gamemode=!creative]
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=0}] run attribute @s minecraft:generic.knockback_resistance base set 1.0
execute if entity @e[tag=BlueBase,sort=nearest,x=0,scores={GameState=1..}] run attribute @s minecraft:generic.knockback_resistance base set 0.0